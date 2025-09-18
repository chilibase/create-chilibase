#!/usr/bin/env node

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import prompts from "prompts";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
    console.log("Welcome to Chilibase project generator.");

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
    copyDir(templateDir, projectDir);

    console.log(`   Chilibase project created in ${projectDir}`);
    console.log(`   Next steps:`);
    console.log(``);
    console.log(`   cd ${projectName}`);
    console.log(`   pnpm install`);
    console.log(``);
    console.log(`   create postgres database`);
    console.log(`   create framework tables/db content using script backend/src/sql_scripts/create_tables_x.sql`);
    console.log(`   configure backend in backend/.env`);
    console.log(``);
    console.log(`   cd backend`);
    console.log(`   pnpm run start-tsc-b`);
    console.log(``);
    console.log(`   in the case that the module common is used (there is some code inside the module common)`);
    console.log(`   cd ../common`);
    console.log(`   pnpm run build`);
    console.log(``);
    console.log(`   cd ../frontend`);
    console.log(`   pnpm run dev`);
}

function copyDir(src, dest) {
    fs.mkdirSync(dest, { recursive: true });

    for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
        const srcPath = path.join(src, entry.name);
        // .gitignore files are not published (property of command publish) that's why we use _gitignore in template and we change it to .gitignore
        let destName = entry.name === "_gitignore" ? ".gitignore" : entry.name;
        const destPath = path.join(dest, destName);

        if (entry.isDirectory()) {
            // Always create the directory, even if empty
            copyDir(srcPath, destPath);
        } else {
            // Skip copying .empty marker
            // .empty files are used because empty directories are not published (property of command publish)
            if (entry.name !== ".empty") {
                fs.copyFileSync(srcPath, destPath);
            }
        }
    }
}

main().catch(err => {
    console.error(err);
    process.exit(1);
});