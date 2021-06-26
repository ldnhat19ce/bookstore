package com.bookstore.model;

public class FeatureCategories {
	
	private int featureCategoriesId;
	private String featureCategoriesImage;
	
	
	public FeatureCategories() {
		
	}
	
	public FeatureCategories(String featureCategoriesImage) {
		this.featureCategoriesImage = featureCategoriesImage;
	}
	
	public int getFeatureCategoriesId() {
		return featureCategoriesId;
	}
	public void setFeatureCategoriesId(int featureCategoriesId) {
		this.featureCategoriesId = featureCategoriesId;
	}
	public String getFeatureCategoriesImage() {
		return featureCategoriesImage;
	}
	public void setFeatureCategoriesImage(String featureCategoriesImage) {
		this.featureCategoriesImage = featureCategoriesImage;
	}
	
	

}
