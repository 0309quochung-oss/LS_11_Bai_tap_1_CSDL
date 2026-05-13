-- Xóa procedure cũ
DROP PROCEDURE IF EXISTS CancelAppointment;

DELIMITER //

-- Tạo lại procedure đã sửa logic
CREATE PROCEDURE CancelAppointment(IN p_appointment_id INT)
BEGIN

    -- Chỉ cho phép hủy lịch ở trạng thái Pending
    UPDATE Appointments
    SET status = 'Cancelled'
    WHERE appointment_id = p_appointment_id
      AND status = 'Pending';

END //

DELIMITER ;
