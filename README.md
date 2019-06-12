# Philadelphia Property Tax

Ruby on Rails App for Citizen Insight into Philadelphia Property Tax Assessments

### *This app is a work in progress, please share your feedback through [email](mailto:darshan.sumant@gmail.com)*

---

## Motivation

Property Taxes are the single largest sustainable revenue source for City & County governments. However, inaccurate property assessments lead to revenue loss and large hits to the exchequer, while regressivity in assessments further aggravate inequality across communities. The Assessor’s team rely solely on completed sales & title deeds, and do not incorporate intermediate valuations or other kinds of market assessments, forcing over-reliance on outdated information and inaccurate heuristics. Greater transparency on property assessments will help citizens understand local (ZIP-level) discrepancies, while empowering citizens to mark the updated market value of a property will help the Assessor’s Office immensely.

## Target Users

The App’s core user will be citizens and property owners who will be able to better understand the inaccuracies in assessments and the lack of updated market assessment of property value within their ZIP Code. The app would be enable them to update any recent market assessments or valuations done, but not translated into a property transfer or title deed. The core user for this updated database will be the Property Assessor’s Office. The app design is agnostic to the particular City or County and allows the Assessors’ teams to upload the latest property assessments as a CSV file. The app can therefore be extended easily and used by multiple City or County Assessors.

## Dataset

The dataset used is the Philadelphia Property Assessments data from [OpenDataPhilly](https://www.opendataphilly.org/dataset/opa-property-assessments).

For the interim, due to the database size restrictions on Heroku, the data has been truncated to include only the assessment values & the latest market value available with the Assessor’s Office, other parcel-level information has been left out. The data is also filtered to keep only 100 parcels chosen randomly from each ZIP Code in the Philadelphia City jurisdiction.

## Measuring Impact

1. The most important metric would be the number of parcels for which the Assessor’s Office is able to receive an updated valuation or market assessment information. This would be the first-level KPI for the app.

2. More accurate market prices should result in more accurate property assessments, with the sales ratio (ratio of the property assessment value to the property market value) being close to 1.00 across communities and property types. This would be the second-level metric for the app’s impact.

3. The ultimate long-term impact of the app should be measured by the increase in property tax revenues for the City or County.

## References

This app was built primarily as a project for the [Civic Technology course](https://abhinemani.com/civictechcourse/) at The University of Chicago.

An invaluable resource for the project has been the [Ruby on Rails tutorial by Clara Raubertas](https://pacific-garden-68717.herokuapp.com/).
