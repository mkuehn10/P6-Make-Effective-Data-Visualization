#[Link to Data Visualization on bl.ocks.org](http://bl.ocks.org/mkuehn10/raw/469783e4dcee94baae1522942fed3e59/)

# Summary
The visualization describes the relationship between bins of batting averages (spaced out by .050), home runs (averaged for each bin of batting averages).  The data can be grouped by a player's handedness (Left, Right, or Switch) or Weight (Light, Medium, or Heavy).  Heavier players tend to hit more home runs than Medium players, and Medium players tend to hit more home runs than Light players with similar batting averages.  Above batting averages of .275, Switch hitters tend to hit more home runs.

The original data was modified using an R script, [baseball_cleaning.R](baseball_cleaning.R). R was used to remove any hitters who had averages of .000 and 0 home runs.  R was also used to group the batting averages and player weights into categories.


# Initial Design Decisions
### Chart Type

Originally, I created a scatter plot with the averages and home runs since these both represented quantitative data.  The resulting scatter plot was very busy, and it was not easy to see any relationships.  I made the decision to group averages into bins of .050 in order to help organize the scatter plot.  I decided to add a line to the scatter plot to help highlight the trends. 

### Visual Encodings

* *Position/Placement*: I placed the averages on the horizontal axis and the home runs on the vertical axis.  I felt that seeing the home runs in the vertical direction would make it easier to see any trends related to increasing or decreasing numbers of home runs.  The average intervals are ordered on the horizontal axis in order to connect increasing intervals with the trend of home runs.
* *Text*: Text labels are included for each axis as well as for the legend in order to describe the colors used.
* *Color*: Color is used to differentiate the type of batter.
* *Shape/Icon*: Points are included that represent the average home runs for each batting average bin.  These show the actual value within the bin.  The lines are used to see the trends between the bins.


# Feedback
Here is a summary of feedback I obtained.  Feedback 1 and 3 are from face-to-face conversations.  Feedback 2 was obtained from an online forum.

### 1
The x-axis labels are confusing since they use interval notation.  Otherwise, it is pretty clear to see the trend that heavier hitters tend to hit more home runs across all batting averages.  

### 2

* What do you notice in the visualization? 
I notice that there are three classifications for weight.  I also notice that batting average and home runs are the relationship that is being graphed.
* What questions do you have about the data?
Does anything else have an impact on the trend other than the weight of the player?
* What relationships do you notice?
I notice that as the batting average increases, the number of home runs increases until the batting over goes over .300.  Also, heavier players tend to hit more home runs.
* What do you think is the main takeaway from this visualization?
That heavier players with similar batting averages tend to hit more home runs.
* Is there something you don't understand in the graphic?
No.

### 3 
I notice that there is some kind of relationship between batting average, home runs, and player weight.  The axis labels and fonts are small and hard to read.  

# Changes Made Based on Feedback  
### Addition of Handedness

I decided to include an interactive/animation element that allows one to select whether to group by player weight or player handedness in order to see if there are any trends in either of these groupings.

### Changes to x-axis Labels

I changed the x-axis labels to be more readable.  Instead of (.125, .150], I changed the label to .126 - .150 to indicate how each interval is represented.

### Fonts and Text

I increased the size of the titles and labels.

# Resources
[dimple.js Full API Documentation](https://github.com/PMSI-AlignAlytics/dimple/wiki)

[d3.js - Remove or clear previously drawn dimple chart - Stack Overflow](http://stackoverflow.com/questions/27146622/remove-or-clear-previously-drawn-dimple-chart)