#!/usr/bin/env node

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import prompts from "prompts";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
    console.log(`   Welcome to Chilibase project generator.`);
    console.log(``);

    // Grab project name from CLI args
    const args = process.argv.slice(2);
    const projectName = await readParam(args, 0, "Project name", "my-chili-app");
    const dbName = await readParam(args, 1, "DB name", "my_chili_db");
    const schemaName = await readParam(args, 2, "Schema name", "my_chili_schema");

    const projectDir = path.resolve(process.cwd(), projectName);
    fs.mkdirSync(projectDir, { recursive: true });

    const templateDir = path.join(__dirname, "..", "template");
    copyDir(templateDir, projectDir, {projectName: projectName, dbName: dbName, schemaName: schemaName});

    console.log(`   Chilibase project created in ${projectDir}`);
    console.log(``);
    console.log(`   Next steps:`);
    console.log(``);
    console.log(`   create postgres database (e.g. using script ${projectName}/backend/src/sql_scripts_create_db/1_create_db.sql)`);
    console.log(`   create schema in database (e.g. using script ${projectName}/backend/src/sql_scripts_create_db/1_create_schema.sql)`);
    console.log(`   create framework tables/db content using script ${projectName}/backend/src/sql_scripts/create_tables_x.sql   (table x_user is required)`);
    console.log(`   insert data using script ${projectName}/backend/src/sql_scripts/data.sql`);
    console.log(`   configure backend in ${projectName}/backend/.env        (at least <password> in X_DATABASE_URL)`);
    console.log(`   configure frontend in ${projectName}/frontend/.env`);
    console.log(``);
    console.log(`   cd ${projectName}/backend`);
    console.log(`   pnpm install`);
    console.log(`   pnpm run start:dev`);
    console.log(``);
    console.log(`   (in other command line)`);
    console.log(`   cd ${projectName}/frontend`);
    console.log(`   pnpm install`);
    console.log(`   pnpm run dev`);
    console.log(``);
    console.log(``);
    console.log(`   Run application on http://localhost:5173/   user: michaelturner, password: turner (if AUTH=LOCAL used)`);
}

async function readParam(args, position, paramName, initialValue) {
    let paramValue;
    if (args.length > position) {
        paramValue = args[position];
    }

    if (!paramValue) {
        // Ask interactively if no argument provided
        const response = await prompts({
            type: "text",
            name: "name",
            message: `${paramName}?`,
            initial: `${initialValue}`
        });
        paramValue = response.name;
    }

    if (!paramValue) {
        console.error(`${paramName} is required`);
        process.exit(1);
    }

    return paramValue;
}

function copyDir(src, dest, variables = {}) {
    fs.mkdirSync(dest, { recursive: true });

    for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
        const srcPath = path.join(src, entry.name);
        // .gitignore files are not published (property of command publish) that's why we use _gitignore in template and we change it to .gitignore
        let destName = entry.name === "_gitignore" ? ".gitignore" : entry.name;
        const destPath = path.join(dest, destName);

        if (entry.isDirectory()) {
            // Always create the directory, even if empty
            copyDir(srcPath, destPath, variables);
        } else {
            // Skip copying .empty marker
            // .empty files are used because empty directories are not published (property of command publish)
            if (entry.name !== ".empty") {
                //fs.copyFileSync(srcPath, destPath);

                // read file as text
                let content = fs.readFileSync(srcPath, "utf8");

                // replace {{variable}} placeholders
                content = replaceVariables(content, variables);

                // write processed content
                fs.writeFileSync(destPath, content);
            }
        }
    }
}

function replaceVariables(content, vars) {
    for (const [varId, varValue] of Object.entries(vars)) {
        content = content.replaceAll(`{{${varId}}}`, varValue);
    }
    return content;
}

main().catch(err => {
    console.error(err);
    process.exit(1);
});