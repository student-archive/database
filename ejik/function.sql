create or replace function searchSubjectOfTutor(tutorid uuid)
    returns table
            (
                subject_name text,
                semester     int
            )
as
$$
begin
    return query (select subject.subject_name, subject.semester
                  from subject
                           join subject_tutor st on subject.id = st.subject_id
                           join tutor t on st.tutor_id = t.id);


end ;


$$language plpgsql;
select searchSubjectOfTutor('2344e605-b565-4090-a1c1-b90969ef170d')

create or replace function searchAttachmentBySubject (subjectname text)
        returns table  (attachment_name text)
as
$$
begin
    return query (select attachment.attachment_name
                    from attachment
                    join page_attachment pa on attachment.id = pa.attachment_id);




end ;

$$language plpgsql;
select searchAttachmentBySubject('e924c483-258b-4695-9726-bb748285236e')
