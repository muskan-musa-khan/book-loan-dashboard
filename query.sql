SELECT
    b.ISBN,
    b.title,
    b.edition,
    b.datePublished,
    CONCAT(a.authorFName, ' ', a.authorLName) AS 'Author Name',
    g.genre,
    COUNT(l.loanStart) AS total_loans,
    COUNT(DISTINCT l.loanLibraryNumb) AS unique_users,
    l.loanStart
FROM
    book b 
    -- Book ↔ Author
    LEFT JOIN wrote w ON b.ISBN = w.wroteISBN
    LEFT JOIN author a ON w.authorID = a.authorID 
    -- Book ↔ Genre
    LEFT JOIN bookGenre bg ON b.ISBN = bg.ISBN
    JOIN genre g ON bg.genreID = g.genreID 
    -- Loans
    LEFT JOIN loan l ON b.ISBN = l.ISBN
where
    l.loanStart is not null
GROUP BY
    b.ISBN,
    b.title,
    b.edition,
    b.datePublished,
    a.authorFName,
    a.authorLName,
    g.genre,
    l.loanStart;