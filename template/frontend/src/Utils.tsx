import type {XEnvVar} from "@chilibase/frontend/XEnvVars";

export class Utils {
    // docasne kym neporiesime zmenu citania env var
    static getEnvVarValue(envVarEnum: XEnvVar): string {
        const value: string | undefined = import.meta.env[envVarEnum];
        if (value === undefined) {
            throw `Environment variable ${envVarEnum} - value not found. Check configuration file .env*`;
        }
        return value;
    }
}
