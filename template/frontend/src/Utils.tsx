export class Utils {
    // temporary until we solve the change of reading env vars
    static getEnvVarValue(envVarEnum: string): string {
        const value: string | undefined = import.meta.env[envVarEnum];
        if (value === undefined) {
            throw `Environment variable ${envVarEnum} - value not found. Check configuration file .env*`;
        }
        return value;
    }
}
