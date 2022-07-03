package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "notes")
public class Note {
	@Id
	private int id;
	private String title;
	@Column(length = 15000)
	private String subtitle;
	private Date addedDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public Note(int id, String title, String subtitle, Date addedDate) {
		super();
		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.subtitle = subtitle;
		this.addedDate = addedDate;
	}

	public Note() {
		super();
	}

	public Note(String title, String subtitle, Date addedDate) {
		super();
		this.id = new Random().nextInt(1000000);
		this.title = title;
		this.subtitle = subtitle;
		this.addedDate = addedDate;
	}
}
