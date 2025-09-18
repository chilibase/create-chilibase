import {
    EntitySubscriberInterface,
    EventSubscriber
} from "typeorm";
import {AfterQueryEvent} from "typeorm/subscriber/event/QueryEvent.js";
import {XUtils} from "@chilibase/backend/XUtils";
import {XEnvVar} from "@chilibase/backend/XEnvVars";

@EventSubscriber()
export class PostSubscriber implements EntitySubscriberInterface {

    /**
     * Called after query execution.
     */
    afterQuery(event: AfterQueryEvent<any>) {
        //console.log(`AFTER QUERY: `, event.query);
        if (XUtils.getEnvVarValueBoolean(XEnvVar.X_LOG_SQL)) {
            // if log SQL is on then log also the time
            console.log(`executionTime: `, event.executionTime);
        }
    }
}