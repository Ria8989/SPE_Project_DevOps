package com.spe.Service;

import java.util.List;

import com.spe.Entity.Planter;
import com.spe.Exception.PlanterException;

public interface PlanterService {

	public Planter addPlanter(Planter planter) throws PlanterException;

	public Planter updatePlanter(Integer planterId,Planter planter) throws PlanterException;

	public Planter deletePlanter(Integer planterId) throws PlanterException;

	public Planter viewPlanterById(Integer planterId) throws PlanterException;

	public List<Planter> viewPlantersByShape(String planterShape) throws PlanterException;

	public List<Planter> viewAllPlanters() throws PlanterException;

	public List<Planter> viewPlantersByCost(Double minCost, Double maxCost) throws PlanterException;
}
