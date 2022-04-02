create or replace procedure "calculateResult" (quiz_history uuid)
    language plpgsql

as
$$
begin
    update "quiz_result"
    set "selected_variant_id" =
end;
$$