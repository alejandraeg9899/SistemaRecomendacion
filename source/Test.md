

```R
x <- rnorm(10)
y <- rnorm(10)
summary(lm(y~x))
```




    
    Call:
    lm(formula = y ~ x)
    
    Residuals:
        Min      1Q  Median      3Q     Max 
    -1.2321 -0.6078  0.1225  0.6715  0.9970 
    
    Coefficients:
                Estimate Std. Error t value Pr(>|t|)
    (Intercept)   0.1981     0.2963   0.669    0.523
    x            -0.5137     0.4608  -1.115    0.297
    
    Residual standard error: 0.8731 on 8 degrees of freedom
    Multiple R-squared:  0.1344,	Adjusted R-squared:  0.02623 
    F-statistic: 1.242 on 1 and 8 DF,  p-value: 0.2974





```R
x
```




<ol class=list-inline>
	<li>1.09765014246608</li>
	<li>1.18103650070068</li>
	<li>0.587510680666234</li>
	<li>1.07617257820323</li>
	<li>1.13665290090847</li>
	<li>0.760292660779474</li>
	<li>0.147142398367481</li>
	<li>1.06645339140338</li>
	<li>-0.424135008707337</li>
	<li>-0.375031276974463</li>
</ol>





```R
y
```




<ol class=list-inline>
	<li>-1.05145991730681</li>
	<li>-1.28838345654313</li>
	<li>0.523044361882755</li>
	<li>-0.0810490293562149</li>
	<li>-1.07468047197496</li>
	<li>0.429442927507889</li>
	<li>-0.198511318227262</li>
	<li>-0.716384907591805</li>
	<li>-0.303530875125406</li>
	<li>-0.262391908075845</li>
</ol>





```R

```
