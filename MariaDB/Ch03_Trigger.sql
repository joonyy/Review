CREATE TABLE deletedMemberTBL(
	memberID varchar(8),
    memberName char(5),
    memberAddress char(20),
    deletedDate date -- 삭제된 날짜
);

DELIMITER //
CREATE TRIGGER trg_deletedMemberTBL -- 트리거명
	AFTER DELETE
    ON memberTBL
    FOR EACH ROW
BEGIN
	INSERT INTO deletedMemberTBL
		VALUES(OLD.memberID, OLD.memberName, OLD.memberAddress, CURDATE() );
END //
DELIMITER ;