package lms.entity;

import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Record {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "record_id")
	@SequenceGenerator(name = "record_id", initialValue = 5000, allocationSize = 1)
	private Long recordId;
	private LocalDate borrowDate;
	private LocalDate retrunDate;
	@ManyToOne
	private User user;

	@ManyToOne
	private Book book;

}
