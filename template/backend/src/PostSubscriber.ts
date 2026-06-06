import {
    EntitySubscriberInterface,
    EventSubscriber
} from "typeorm";
import {AfterQueryEvent} from "typeorm/subscriber/event/QueryEvent.js";
import {XUtils} from "@chilibase/backend/utils";
import {EnvVar} from "@chilibase/backend/env-vars";

@EventSubscriber()
export class PostSubscriber implements EntitySubscriberInterface {

    /**
     * Called after query execution.
     */
    afterQuery(event: AfterQueryEvent<any>) {
        //console.log(`AFTER QUERY: `, event.query);
        if (XUtils.getEnvVarValueBoolean(EnvVar.X_LOG_SQL)) {
            // if log SQL is on then log also the time
            console.log(`executionTime: `, event.executionTime);
        }
    }
}