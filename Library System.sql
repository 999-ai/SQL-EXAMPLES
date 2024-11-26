select *from Members
select Books.Writername,Books.Bookname from Books
where Books.Writername='Nick Simon'
select Members.Membername,Books.Bookname
from Borrowingtable inner join Members on  Borrowingtable.MemberID=Members.MemberID
inner join Books on Borrowingtable.BookID=Books.BookID 
where Members.Membername='Jasmine'
select *from Borrowingtable
where Borrowingdate>'2020-01-01'
select Books.Bookname,count(Books.BookID) as borrow_no  from Books
group by Books.Bookname
order by borrow_no desc
