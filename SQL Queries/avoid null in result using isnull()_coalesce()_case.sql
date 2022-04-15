--different ways to remove the null in the result


--using the isnull() function
 select  isnull(a.dprtName,'dprt is not allocated'),
 a.teacherID,
 b.*
 from teachers a full join teachersdetails b on a.teacherid=b.id


 
--using the case keyword
 select  case when a.dprtName is null then 'dprt yet to allocate' else  a.dprtName end,
 a.teacherID,
 b.*
 from teachers a full join teachersdetails b on a.teacherid=b.id



 --using the coalesce() function
 select  coalesce(a.dprtName,'dprt is not allocated'),
 a.teacherID,
 b.*
 from teachers a full join teachersdetails b on a.teacherid=b.id











