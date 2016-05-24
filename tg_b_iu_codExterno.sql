create or replace trigger TG_IU_CODEXTERNO
  before insert or update on e075pro
  for each row
declare

begin
  if (inserting or updating) then
    :new.usu_codpes := :new.usu_codext1 || :new.usu_codext2 || :new.usu_codext3 || :new.usu_codext4 || :new.usu_codext5;
  end if;  
end;
