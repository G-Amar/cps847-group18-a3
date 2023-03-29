BEGIN;
--
-- Add field facilitator to question
--
ALTER TABLE "polls_question" ADD COLUMN "facilitator" varchar(200) NULL;
COMMIT;
