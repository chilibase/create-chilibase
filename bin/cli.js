#!/usr/bin/env node

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import prompts from "prompts";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
    console.log("Welcome to Chilibase project generator - localhost 4.");

    // Grab project name from CLI args
    const args = process.argv.slice(2);
    let projectName = args[0];

    if (!projectName) {
        // Ask interactively if no argument provided
        const response = await prompts({
            type: "text",
            name: "name",
            message: "Project name?",
            initial: "my-chilibase-app"
        });
        projectName = response.name;
    }

    if (!projectName) {
        console.error("Project name is required");
        process.exit(1);
    }

    const projectDir = path.resolve(process.cwd(), projectName);
    fs.mkdirSync(projectDir, { recursive: true });

    const templateDir = path.join(__dirname, "..", "template");
    copyDir(templateDir, projectDir, {projectName: projectName});

    console.log(`   Chilibase project created in ${projectDir}`);
    console.log(`   Next steps:`);
    console.log(``);
    console.log(`   create postgres database`);
    console.log(`   create framework tables/db content using script ${projectName}/backend/src/sql_scripts/create_tables_x.sql`);
    console.log(`   configure backend in ${projectName}/backend/.env`);
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