#!/usr/bin/env node

import fs from "fs";
import path from "path";
import { fileURLToPath } from "url";
import prompts from "prompts";

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function main() {
    console.log("🚀 Welcome to Chilibase project generator.");

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
        console.error("❌ Project name is required");
        process.exit(1);
    }

    const projectDir = path.resolve(process.cwd(), projectName);
    fs.mkdirSync(projectDir, { recursive: true });

    const templateDir = path.join(__dirname, "..", "template");
    copyDir(templateDir, projectDir);

    console.log(`✅ TypeScript project created in ${projectDir}`);
    console.log(`👉 Next steps:`);
    console.log(`   cd ${projectName}`);
    console.log(`   npm install (or pnpm install / yarn)`);
    console.log(`   npm start`);
}

function copyDir(src, dest) {
    fs.mkdirSync(dest, { recursive: true });
    for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
        const srcPath = path.join(src, entry.name);
        const destPath = path.join(dest, entry.name);
        if (entry.isDirectory()) {
            copyDir(srcPath, destPath);
        } else {
            fs.copyFileSync(srcPath, destPath);
        }
    }
}

main().catch(err => {
    console.error(err);
    process.exit(1);
});