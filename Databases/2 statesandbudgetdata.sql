delete states
delete budget

insert states(StateName, StateCode, PopValue, RepublicanVotes, DemocratVotes, Admitted)
select	 'Alabama','AL',4849377,9,0,'December 14, 1819'
union select	'Alaska','AK',737732,3,0,'January 3, 1959'
union select	'Arizona','AZ',6731484,11,0,'February 14, 1912'
union select	'Arkansas','AR',2994079,6,0,'June 15, 1836'
union select	'California','CA',38802500,0,55,'September 9, 1850'
union select	'Colorado','CO',5355856,0,9,'August 1, 1876'
union select	'Connecticut','CT',3596677,0,7,'January 9, 1788'
union select	'Delaware','DE',935614,0,3,'December 7, 1787'
union select	'Florida','FL',19893297,29,0,'March 3, 1845'
union select	'Georgia','GA',10097343,16,0,'January 2, 1788'
union select	'Hawaii','HI',1419561,0,4,'August 21, 1959'
union select	'Idaho','ID',1634464,4,0,'July 3, 1890'
union select	'Illinois','IL',12880580,0,20,'December 3, 1818'
union select	'Indiana','IN',6596855,11,0,'December 11, 1816'
union select	'Iowa','IA',3107126,6,0,'December 28, 1846'
union select	'Kansas','KS',2904021,6,0,'January 29, 1861'
union select	'Kentucky','KY',4413457,8,0,'June 1, 1792'
union select	'Louisiana','LA',4649676,8,0,'April 30, 1812'
union select	'Maine','ME',1330089,1,3,'March 15, 1820'
union select	'Maryland','MD',5976407,0,10,'April 28, 1788'
union select	'Massachusetts','MA',6745408,0,11,'February 6, 1788'
union select	'Michigan','MI',9909877,16,0,'January 26, 1837'
union select	'Minnesota','MN',5457173,0,10,'May 11, 1858'
union select	'Mississippi','MS',2984926,10,0,'December 10, 1817'
union select	'Missouri','MO',6063589,6,0,'August 10, 1821'
union select	'Montana','MT',1023579,3,0,'November 8, 1889'
union select	'Nebraska','NE',1881503,5,0,'March 1, 1867'
union select	'Nevada','NV',2839099,0,6,'October 31, 1864'
union select	'New Hampshire','NH',1326813,0,4,'June 21, 1788'
union select	'New Jersey','NJ',8938175,0,14,'December 18, 1787'
union select	'New Mexico','NM',2085572,0,5,'January 6, 1912'
union select	'New York','NY',19746227,0,29,'July 26, 1788'
union select	'North Carolina','NC',9943964,15,0,'November 21, 1789'
union select	'North Dakota','ND',739482,3,0,'November 2, 1889'
union select	'Ohio','OH',11594163,18,0,'March 1, 1803'
union select	'Oklahoma','OK',3878051,7,0,'November 16, 1907'
union select	'Oregon','OR',3970239,0,7,'February 14, 1859'
union select	'Pennsylvania','PA',12787209,20,0,'December 12, 1787'
union select	'Rhode Island','RI',1055173,0,4,'May 29, 1790'
union select	'South Carolina','SC',4832482,9,0,'May 23, 1788'
union select	'South Dakota','SD',853175,3,0,'November 2, 1889'
union select	'Tennessee','TN',6549352,11,0,'June 1, 1796'
union select	'Texas','TX',26956958,38,0,'December 29, 1845'
union select	'Utah','UT',2942902,6,0,'January 4, 1896'
union select	'Vermont','VT',626011,0,3,'March 4, 1791'
union select	'Virginia','VA',8326289,0,13,'June 25, 1788'
union select	'Washington','WA',7061530,0,12,'November 11, 1889'
union select	'West Virginia','WV',1850326,5,0,'June 20, 1863'
union select	'Wisconsin','WI',5757564,10,0,'May 29, 1848'
union select	'Wyoming','WY',584153,3,0,'July 10, 1890'
order by 1
go
insert budget(Department, BudgetYear, Millions)

select 'Corps of Engineers--Civil Works',	1977	,	2479
union select 'Corps of Engineers--Civil Works',	1978	,	2781
union select 'Corps of Engineers--Civil Works',	1979	,	2780
union select 'Corps of Engineers--Civil Works',	1980	,	3247
union select 'Corps of Engineers--Civil Works',	1981	,	3089
union select 'Corps of Engineers--Civil Works',	1982	,	2988
union select 'Corps of Engineers--Civil Works',	1983	,	3406
union select 'Corps of Engineers--Civil Works',	1984	,	2674
union select 'Corps of Engineers--Civil Works',	1985	,	2883
union select 'Corps of Engineers--Civil Works',	1986	,	2722
union select 'Corps of Engineers--Civil Works',	1987	,	3121
union select 'Corps of Engineers--Civil Works',	1988	,	3226
union select 'Corps of Engineers--Civil Works',	1989	,	3215
union select 'Corps of Engineers--Civil Works',	1990	,	3165
union select 'Corps of Engineers--Civil Works',	1991	,	3281
union select 'Corps of Engineers--Civil Works',	1993	,	3852
union select 'Corps of Engineers--Civil Works',	1992	,	3667
union select 'Corps of Engineers--Civil Works',	1994	,	3925
union select 'Corps of Engineers--Civil Works',	1995	,	3344
union select 'Corps of Engineers--Civil Works',	1996	,	3336
union select 'Corps of Engineers--Civil Works',	1998	,	4145
union select 'Corps of Engineers--Civil Works',	1999	,	3797
union select 'Corps of Engineers--Civil Works',	2000	,	4028
union select 'Corps of Engineers--Civil Works',	2001	,	4619
union select 'Corps of Engineers--Civil Works',	2002	,	4730
union select 'Corps of Engineers--Civil Works',	2003	,	4771
union select 'Corps of Engineers--Civil Works',	2004	,	4554
union select 'Corps of Engineers--Civil Works',	2005	,	5494
union select 'Corps of Engineers--Civil Works',	2006	,	11944
union select 'Corps of Engineers--Civil Works',	2007	,	7046
union select 'Corps of Engineers--Civil Works',	2008	,	9093
union select 'Corps of Engineers--Civil Works',	2009	,	16587
union select 'Corps of Engineers--Civil Works',	2010	,	5665
union select 'Corps of Engineers--Civil Works',	2011	,	4854
union select 'Corps of Engineers--Civil Works',	2012	,	6763
union select 'Corps of Engineers--Civil Works',	2013	,	9716
union select 'Corps of Engineers--Civil Works',	2014	,	5612
union select 'Corps of Engineers--Civil Works',	2015	,	5477
union select 'Corps of Engineers--Civil Works',	2016	,	5916
union select 'Corps of Engineers--Civil Works',	2017	,	4558
union select 'Corps of Engineers--Civil Works',	2018	,	4639
union select 'Corps of Engineers--Civil Works',	2019	,	4731
union select 'Corps of Engineers--Civil Works',	2020	,	4829
union select 'Corps of Engineers--Civil Works',	2021	,	4927
union select 'Department of Agriculture',	1977	,	21841
union select 'Department of Agriculture',	1978	,	26659
union select 'Department of Agriculture',	1979	,	37250
union select 'Department of Agriculture',	1980	,	39559
union select 'Department of Agriculture',	1981	,	47410
union select 'Department of Agriculture',	1982	,	57400
union select 'Department of Agriculture',	1983	,	69831
union select 'Department of Agriculture',	1984	,	46734
union select 'Department of Agriculture',	1985	,	61823
union select 'Department of Agriculture',	1986	,	59154
union select 'Department of Agriculture',	1987	,	52421
union select 'Department of Agriculture',	1988	,	55134
union select 'Department of Agriculture',	1989	,	55627
union select 'Department of Agriculture',	1990	,	55214
union select 'Department of Agriculture',	1991	,	59957
union select 'Department of Agriculture',	1993	,	67730
union select 'Department of Agriculture',	1992	,	66170
union select 'Department of Agriculture',	1994	,	65458
union select 'Department of Agriculture',	1995	,	58437
union select 'Department of Agriculture',	1996	,	58592
union select 'Department of Agriculture',	1998	,	58134
union select 'Department of Agriculture',	1999	,	67560
union select 'Department of Agriculture',	2000	,	75162
union select 'Department of Agriculture',	2001	,	73082
union select 'Department of Agriculture',	2002	,	71209
union select 'Department of Agriculture',	2003	,	78750
union select 'Department of Agriculture',	2004	,	93037
union select 'Department of Agriculture',	2005	,	95023
union select 'Department of Agriculture',	2006	,	97339
union select 'Department of Agriculture',	2007	,	91821
union select 'Department of Agriculture',	2008	,	92950
union select 'Department of Agriculture',	2009	,	127826
union select 'Department of Agriculture',	2010	,	130983
union select 'Department of Agriculture',	2011	,	140677
union select 'Department of Agriculture',	2012	,	151789
union select 'Department of Agriculture',	2013	,	154924
union select 'Department of Agriculture',	2014	,	157510
union select 'Department of Agriculture',	2015	,	142471
union select 'Department of Agriculture',	2016	,	164035
union select 'Department of Agriculture',	2017	,	155351
union select 'Department of Agriculture',	2018	,	153106
union select 'Department of Agriculture',	2019	,	153066
union select 'Department of Agriculture',	2020	,	154326
union select 'Department of Agriculture',	2021	,	156596
union select 'Department of Commerce',	1977	,	7814
union select 'Department of Commerce',	1978	,	1892
union select 'Department of Commerce',	1979	,	2086
union select 'Department of Commerce',	1980	,	2610
union select 'Department of Commerce',	1981	,	2072
union select 'Department of Commerce',	1982	,	1834
union select 'Department of Commerce',	1983	,	1923
union select 'Department of Commerce',	1984	,	2015
union select 'Department of Commerce',	1985	,	2309
union select 'Department of Commerce',	1986	,	1980
union select 'Department of Commerce',	1987	,	2155
union select 'Department of Commerce',	1988	,	2449
union select 'Department of Commerce',	1989	,	2807
union select 'Department of Commerce',	1990	,	3683
union select 'Department of Commerce',	1991	,	2648
union select 'Department of Commerce',	1993	,	3159
union select 'Department of Commerce',	1992	,	3022
union select 'Department of Commerce',	1994	,	3811
union select 'Department of Commerce',	1995	,	4025
union select 'Department of Commerce',	1996	,	3612
union select 'Department of Commerce',	1998	,	4100
union select 'Department of Commerce',	1999	,	5431
union select 'Department of Commerce',	2000	,	8733
union select 'Department of Commerce',	2001	,	5167
union select 'Department of Commerce',	2002	,	5545
union select 'Department of Commerce',	2003	,	5800
union select 'Department of Commerce',	2004	,	5877
union select 'Department of Commerce',	2005	,	6476
union select 'Department of Commerce',	2006	,	6638
union select 'Department of Commerce',	2007	,	7766
union select 'Department of Commerce',	2008	,	9585
union select 'Department of Commerce',	2009	,	25713
union select 'Department of Commerce',	2010	,	13679
union select 'Department of Commerce',	2011	,	5704
union select 'Department of Commerce',	2012	,	7984
union select 'Department of Commerce',	2013	,	7959
union select 'Department of Commerce',	2014	,	10113
union select 'Department of Commerce',	2015	,	13819
union select 'Department of Commerce',	2016	,	10132
union select 'Department of Commerce',	2017	,	12133
union select 'Department of Commerce',	2018	,	10323
union select 'Department of Commerce',	2019	,	11604
union select 'Department of Commerce',	2020	,	15890
union select 'Department of Commerce',	2021	,	10582
union select 'Department of Defense--Military Programs',	1977	,	107906
union select 'Department of Defense--Military Programs',	1978	,	114531
union select 'Department of Defense--Military Programs',	1979	,	123595
union select 'Department of Defense--Military Programs',	1980	,	140651
union select 'Department of Defense--Military Programs',	1981	,	176100
union select 'Department of Defense--Military Programs',	1982	,	211486
union select 'Department of Defense--Military Programs',	1983	,	238834
union select 'Department of Defense--Military Programs',	1984	,	258108
union select 'Department of Defense--Military Programs',	1985	,	286789
union select 'Department of Defense--Military Programs',	1986	,	281398
union select 'Department of Defense--Military Programs',	1987	,	279417
union select 'Department of Defense--Military Programs',	1988	,	283710
union select 'Department of Defense--Military Programs',	1989	,	290785
union select 'Department of Defense--Military Programs',	1990	,	292936
union select 'Department of Defense--Military Programs',	1991	,	275676
union select 'Department of Defense--Military Programs',	1993	,	267334
union select 'Department of Defense--Military Programs',	1992	,	281827
union select 'Department of Defense--Military Programs',	1994	,	251294
union select 'Department of Defense--Military Programs',	1995	,	255658
union select 'Department of Defense--Military Programs',	1996	,	254525
union select 'Department of Defense--Military Programs',	1998	,	258250
union select 'Department of Defense--Military Programs',	1999	,	278402
union select 'Department of Defense--Military Programs',	2000	,	290307
union select 'Department of Defense--Military Programs',	2001	,	318651
union select 'Department of Defense--Military Programs',	2002	,	344878
union select 'Department of Defense--Military Programs',	2003	,	439339
union select 'Department of Defense--Military Programs',	2004	,	471796
union select 'Department of Defense--Military Programs',	2005	,	483846
union select 'Department of Defense--Military Programs',	2006	,	532926
union select 'Department of Defense--Military Programs',	2007	,	602984
union select 'Department of Defense--Military Programs',	2008	,	674694
union select 'Department of Defense--Military Programs',	2009	,	667557
union select 'Department of Defense--Military Programs',	2010	,	695646
union select 'Department of Defense--Military Programs',	2011	,	691471
union select 'Department of Defense--Military Programs',	2012	,	655397
union select 'Department of Defense--Military Programs',	2013	,	585239
union select 'Department of Defense--Military Programs',	2014	,	595723
union select 'Department of Defense--Military Programs',	2015	,	570861
union select 'Department of Defense--Military Programs',	2016	,	587090
union select 'Department of Defense--Military Programs',	2017	,	590577
union select 'Department of Defense--Military Programs',	2018	,	564689
union select 'Department of Defense--Military Programs',	2019	,	572861
union select 'Department of Defense--Military Programs',	2020	,	578202
union select 'Department of Defense--Military Programs',	2021	,	593129
union select 'Department of Education',	1977	,	10568
union select 'Department of Education',	1978	,	11625
union select 'Department of Education',	1979	,	13996
union select 'Department of Education',	1980	,	15209
union select 'Department of Education',	1981	,	16752
union select 'Department of Education',	1982	,	15374
union select 'Department of Education',	1983	,	15267
union select 'Department of Education',	1984	,	15336
union select 'Department of Education',	1985	,	18952
union select 'Department of Education',	1986	,	17750
union select 'Department of Education',	1987	,	19475
union select 'Department of Education',	1988	,	20098
union select 'Department of Education',	1989	,	22819
union select 'Department of Education',	1990	,	24549
union select 'Department of Education',	1991	,	27360
union select 'Department of Education',	1993	,	31324
union select 'Department of Education',	1992	,	28685
union select 'Department of Education',	1994	,	26881
union select 'Department of Education',	1995	,	32245
union select 'Department of Education',	1996	,	29097
union select 'Department of Education',	1998	,	35298
union select 'Department of Education',	1999	,	33643
union select 'Department of Education',	2000	,	31816
union select 'Department of Education',	2001	,	39734
union select 'Department of Education',	2002	,	55838
union select 'Department of Education',	2003	,	63001
union select 'Department of Education',	2004	,	67161
union select 'Department of Education',	2005	,	74476
union select 'Department of Education',	2006	,	100019
union select 'Department of Education',	2007	,	68265
union select 'Department of Education',	2008	,	65399
union select 'Department of Education',	2009	,	131891
union select 'Department of Education',	2010	,	62911
union select 'Department of Education',	2011	,	43628
union select 'Department of Education',	2012	,	57458
union select 'Department of Education',	2013	,	39495
union select 'Department of Education',	2014	,	55200
union select 'Department of Education',	2015	,	87258
union select 'Department of Education',	2016	,	77956
union select 'Department of Education',	2017	,	79422
union select 'Department of Education',	2018	,	82188
union select 'Department of Education',	2019	,	91412
union select 'Department of Education',	2020	,	95188
union select 'Department of Education',	2021	,	100587
union select 'Department of Energy',	1977	,	7021
union select 'Department of Energy',	1978	,	10467
union select 'Department of Energy',	1979	,	9805
union select 'Department of Energy',	1980	,	10767
union select 'Department of Energy',	1981	,	11241
union select 'Department of Energy',	1982	,	12485
union select 'Department of Energy',	1983	,	11892
union select 'Department of Energy',	1984	,	10952
union select 'Department of Energy',	1985	,	12617
union select 'Department of Energy',	1986	,	10558
union select 'Department of Energy',	1987	,	10124
union select 'Department of Energy',	1988	,	11162
union select 'Department of Energy',	1989	,	11696
union select 'Department of Energy',	1990	,	13983
union select 'Department of Energy',	1991	,	16102
union select 'Department of Energy',	1993	,	17712
union select 'Department of Energy',	1992	,	17197
union select 'Department of Energy',	1994	,	17159
union select 'Department of Energy',	1995	,	15019
union select 'Department of Energy',	1996	,	14128
union select 'Department of Energy',	1998	,	14371
union select 'Department of Energy',	1999	,	16353
union select 'Department of Energy',	2000	,	15291
union select 'Department of Energy',	2001	,	17666
union select 'Department of Energy',	2002	,	18447
union select 'Department of Energy',	2003	,	20552
union select 'Department of Energy',	2004	,	21988
union select 'Department of Energy',	2005	,	21093
union select 'Department of Energy',	2006	,	21085
union select 'Department of Energy',	2007	,	21686
union select 'Department of Energy',	2008	,	22739
union select 'Department of Energy',	2009	,	68557
union select 'Department of Energy',	2010	,	23026
union select 'Department of Energy',	2011	,	22648
union select 'Department of Energy',	2012	,	22721
union select 'Department of Energy',	2013	,	21221
union select 'Department of Energy',	2014	,	22174
union select 'Department of Energy',	2015	,	25393
union select 'Department of Energy',	2016	,	28879
union select 'Department of Energy',	2017	,	30829
union select 'Department of Energy',	2018	,	29724
union select 'Department of Energy',	2019	,	31575
union select 'Department of Energy',	2020	,	33787
union select 'Department of Energy',	2021	,	34984
union select 'Department of Health and Human Services',	1977	,	47035
union select 'Department of Health and Human Services',	1978	,	51891
union select 'Department of Health and Human Services',	1979	,	59726
union select 'Department of Health and Human Services',	1980	,	70002
union select 'Department of Health and Human Services',	1981	,	80788
union select 'Department of Health and Human Services',	1982	,	86307
union select 'Department of Health and Human Services',	1983	,	91478
union select 'Department of Health and Human Services',	1984	,	103715
union select 'Department of Health and Human Services',	1985	,	113981
union select 'Department of Health and Human Services',	1986	,	123589
union select 'Department of Health and Human Services',	1987	,	133443
union select 'Department of Health and Human Services',	1988	,	142396
union select 'Department of Health and Human Services',	1989	,	155160
union select 'Department of Health and Human Services',	1990	,	184673
union select 'Department of Health and Human Services',	1991	,	201473
union select 'Department of Health and Human Services',	1993	,	257702
union select 'Department of Health and Human Services',	1992	,	251439
union select 'Department of Health and Human Services',	1994	,	307700
union select 'Department of Health and Human Services',	1995	,	301969
union select 'Department of Health and Human Services',	1996	,	318434
union select 'Department of Health and Human Services',	1998	,	359307
union select 'Department of Health and Human Services',	1999	,	364973
union select 'Department of Health and Human Services',	2000	,	392122
union select 'Department of Health and Human Services',	2001	,	434443
union select 'Department of Health and Human Services',	2002	,	478236
union select 'Department of Health and Human Services',	2003	,	515464
union select 'Department of Health and Human Services',	2004	,	556305
union select 'Department of Health and Human Services',	2005	,	591392
union select 'Department of Health and Human Services',	2006	,	684554
union select 'Department of Health and Human Services',	2007	,	658365
union select 'Department of Health and Human Services',	2008	,	721693
union select 'Department of Health and Human Services',	2009	,	851721
union select 'Department of Health and Human Services',	2010	,	889608
union select 'Department of Health and Human Services',	2011	,	889186
union select 'Department of Health and Human Services',	2012	,	874458
union select 'Department of Health and Human Services',	2013	,	873330
union select 'Department of Health and Human Services',	2014	,	960955
union select 'Department of Health and Human Services',	2015	,	1045158
union select 'Department of Health and Human Services',	2016	,	1116839
union select 'Department of Health and Human Services',	2017	,	1150141
union select 'Department of Health and Human Services',	2018	,	1167055
union select 'Department of Health and Human Services',	2019	,	1245532
union select 'Department of Health and Human Services',	2020	,	1312262
union select 'Department of Health and Human Services',	2021	,	1378449
union select 'Department of Homeland Security',	1977	,	2881
union select 'Department of Homeland Security',	1978	,	3314
union select 'Department of Homeland Security',	1979	,	3969
union select 'Department of Homeland Security',	1980	,	4424
union select 'Department of Homeland Security',	1981	,	3971
union select 'Department of Homeland Security',	1982	,	4563
union select 'Department of Homeland Security',	1983	,	4981
union select 'Department of Homeland Security',	1984	,	5231
union select 'Department of Homeland Security',	1985	,	5056
union select 'Department of Homeland Security',	1986	,	5139
union select 'Department of Homeland Security',	1987	,	5927
union select 'Department of Homeland Security',	1988	,	6152
union select 'Department of Homeland Security',	1989	,	7110
union select 'Department of Homeland Security',	1990	,	7292
union select 'Department of Homeland Security',	1991	,	6574
union select 'Department of Homeland Security',	1993	,	9091
union select 'Department of Homeland Security',	1992	,	11158
union select 'Department of Homeland Security',	1994	,	12476
union select 'Department of Homeland Security',	1995	,	11442
union select 'Department of Homeland Security',	1996	,	11667
union select 'Department of Homeland Security',	1998	,	11243
union select 'Department of Homeland Security',	1999	,	13042
union select 'Department of Homeland Security',	2000	,	13840
union select 'Department of Homeland Security',	2001	,	16400
union select 'Department of Homeland Security',	2002	,	30570
union select 'Department of Homeland Security',	2003	,	30844
union select 'Department of Homeland Security',	2004	,	31650
union select 'Department of Homeland Security',	2005	,	100689
union select 'Department of Homeland Security',	2006	,	32285
union select 'Department of Homeland Security',	2007	,	39702
union select 'Department of Homeland Security',	2008	,	50624
union select 'Department of Homeland Security',	2009	,	46001
union select 'Department of Homeland Security',	2010	,	45423
union select 'Department of Homeland Security',	2011	,	41648
union select 'Department of Homeland Security',	2012	,	45911
union select 'Department of Homeland Security',	2013	,	61873
union select 'Department of Homeland Security',	2014	,	44146
union select 'Department of Homeland Security',	2015	,	45272
union select 'Department of Homeland Security',	2016	,	46876
union select 'Department of Homeland Security',	2017	,	46964
union select 'Department of Homeland Security',	2018	,	40697
union select 'Department of Homeland Security',	2019	,	41448
union select 'Department of Homeland Security',	2020	,	42193
union select 'Department of Homeland Security',	2021	,	42961
union select 'Department of Housing and Urban Development',	1977	,	33818
union select 'Department of Housing and Urban Development',	1978	,	37994
union select 'Department of Housing and Urban Development',	1979	,	31142
union select 'Department of Housing and Urban Development',	1980	,	35852
union select 'Department of Housing and Urban Development',	1981	,	34220
union select 'Department of Housing and Urban Development',	1982	,	20911
union select 'Department of Housing and Urban Development',	1983	,	16561
union select 'Department of Housing and Urban Development',	1984	,	18148
union select 'Department of Housing and Urban Development',	1985	,	31398
union select 'Department of Housing and Urban Development',	1986	,	15928
union select 'Department of Housing and Urban Development',	1987	,	14657
union select 'Department of Housing and Urban Development',	1988	,	14949
union select 'Department of Housing and Urban Development',	1989	,	14347
union select 'Department of Housing and Urban Development',	1990	,	17315
union select 'Department of Housing and Urban Development',	1991	,	27634
union select 'Department of Housing and Urban Development',	1993	,	26468
union select 'Department of Housing and Urban Development',	1992	,	24966
union select 'Department of Housing and Urban Development',	1994	,	26322
union select 'Department of Housing and Urban Development',	1995	,	19800
union select 'Department of Housing and Urban Development',	1996	,	20821
union select 'Department of Housing and Urban Development',	1998	,	20976
union select 'Department of Housing and Urban Development',	1999	,	26303
union select 'Department of Housing and Urban Development',	2000	,	24277
union select 'Department of Housing and Urban Development',	2001	,	32296
union select 'Department of Housing and Urban Development',	2002	,	34481
union select 'Department of Housing and Urban Development',	2003	,	34371
union select 'Department of Housing and Urban Development',	2004	,	35077
union select 'Department of Housing and Urban Development',	2005	,	35029
union select 'Department of Housing and Urban Development',	2006	,	52405
union select 'Department of Housing and Urban Development',	2007	,	35364
union select 'Department of Housing and Urban Development',	2008	,	50930
union select 'Department of Housing and Urban Development',	2009	,	61810
union select 'Department of Housing and Urban Development',	2010	,	45075
union select 'Department of Housing and Urban Development',	2011	,	48528
union select 'Department of Housing and Urban Development',	2012	,	40115
union select 'Department of Housing and Urban Development',	2013	,	68969
union select 'Department of Housing and Urban Development',	2014	,	42676
union select 'Department of Housing and Urban Development',	2015	,	44115
union select 'Department of Housing and Urban Development',	2016	,	47890
union select 'Department of Housing and Urban Development',	2017	,	48227
union select 'Department of Housing and Urban Development',	2018	,	49122
union select 'Department of Housing and Urban Development',	2019	,	50280
union select 'Department of Housing and Urban Development',	2020	,	51830
union select 'Department of Housing and Urban Development',	2021	,	52942
union select 'Department of Justice',	1977	,	2204
union select 'Department of Justice',	1978	,	2212
union select 'Department of Justice',	1979	,	2317
union select 'Department of Justice',	1980	,	2261
union select 'Department of Justice',	1981	,	2096
union select 'Department of Justice',	1982	,	2310
union select 'Department of Justice',	1983	,	2679
union select 'Department of Justice',	1984	,	3096
union select 'Department of Justice',	1985	,	3412
union select 'Department of Justice',	1986	,	3446
union select 'Department of Justice',	1987	,	4508
union select 'Department of Justice',	1988	,	4818
union select 'Department of Justice',	1989	,	5814
union select 'Department of Justice',	1990	,	7891
union select 'Department of Justice',	1991	,	8371
union select 'Department of Justice',	1993	,	9841
union select 'Department of Justice',	1992	,	9326
union select 'Department of Justice',	1994	,	9519
union select 'Department of Justice',	1995	,	11985
union select 'Department of Justice',	1996	,	13964
union select 'Department of Justice',	1998	,	16597
union select 'Department of Justice',	1999	,	17138
union select 'Department of Justice',	2000	,	15751
union select 'Department of Justice',	2001	,	19196
union select 'Department of Justice',	2002	,	21381
union select 'Department of Justice',	2003	,	22934
union select 'Department of Justice',	2004	,	28092
union select 'Department of Justice',	2005	,	21772
union select 'Department of Justice',	2006	,	23052
union select 'Department of Justice',	2007	,	24771
union select 'Department of Justice',	2008	,	26354
union select 'Department of Justice',	2009	,	32661
union select 'Department of Justice',	2010	,	30171
union select 'Department of Justice',	2011	,	29184
union select 'Department of Justice',	2012	,	31412
union select 'Department of Justice',	2013	,	28106
union select 'Department of Justice',	2014	,	32753
union select 'Department of Justice',	2015	,	29371
union select 'Department of Justice',	2016	,	34980
union select 'Department of Justice',	2017	,	33289
union select 'Department of Justice',	2018	,	34476
union select 'Department of Justice',	2019	,	35103
union select 'Department of Justice',	2020	,	35714
union select 'Department of Justice',	2021	,	36344
union select 'Department of Labor',	1977	,	31194
union select 'Department of Labor',	1978	,	16826
union select 'Department of Labor',	1979	,	24715
union select 'Department of Labor',	1980	,	29846
union select 'Department of Labor',	1981	,	30999
union select 'Department of Labor',	1982	,	32084
union select 'Department of Labor',	1983	,	38286
union select 'Department of Labor',	1984	,	32013
union select 'Department of Labor',	1985	,	23873
union select 'Department of Labor',	1986	,	24589
union select 'Department of Labor',	1987	,	23958
union select 'Department of Labor',	1988	,	23070
union select 'Department of Labor',	1989	,	25859
union select 'Department of Labor',	1990	,	27377
union select 'Department of Labor',	1991	,	36235
union select 'Department of Labor',	1993	,	47692
union select 'Department of Labor',	1992	,	48887
union select 'Department of Labor',	1994	,	39003
union select 'Department of Labor',	1995	,	32924
union select 'Department of Labor',	1996	,	34099
union select 'Department of Labor',	1998	,	33757
union select 'Department of Labor',	1999	,	35763
union select 'Department of Labor',	2000	,	31258
union select 'Department of Labor',	2001	,	44437
union select 'Department of Labor',	2002	,	65209
union select 'Department of Labor',	2003	,	69074
union select 'Department of Labor',	2004	,	56923
union select 'Department of Labor',	2005	,	47155
union select 'Department of Labor',	2006	,	45896
union select 'Department of Labor',	2007	,	47624
union select 'Department of Labor',	2008	,	57973
union select 'Department of Labor',	2009	,	152821
union select 'Department of Labor',	2010	,	179228
union select 'Department of Labor',	2011	,	130168
union select 'Department of Labor',	2012	,	105366
union select 'Department of Labor',	2013	,	82267
union select 'Department of Labor',	2014	,	55782
union select 'Department of Labor',	2015	,	45953
union select 'Department of Labor',	2016	,	46824
union select 'Department of Labor',	2017	,	64863
union select 'Department of Labor',	2018	,	53548
union select 'Department of Labor',	2019	,	54853
union select 'Department of Labor',	2020	,	57459
union select 'Department of Labor',	2021	,	59325
union select 'Department of State',	1977	,	1530
union select 'Department of State',	1978	,	1798
union select 'Department of State',	1979	,	2075
union select 'Department of State',	1980	,	2411
union select 'Department of State',	1981	,	2583
union select 'Department of State',	1982	,	2774
union select 'Department of State',	1983	,	2952
union select 'Department of State',	1984	,	3193
union select 'Department of State',	1985	,	3802
union select 'Department of State',	1986	,	4311
union select 'Department of State',	1987	,	4034
union select 'Department of State',	1988	,	4160
union select 'Department of State',	1989	,	4461
union select 'Department of State',	1990	,	4728
union select 'Department of State',	1991	,	5272
union select 'Department of State',	1993	,	6561
union select 'Department of State',	1992	,	6171
union select 'Department of State',	1994	,	7050
union select 'Department of State',	1995	,	6141
union select 'Department of State',	1996	,	5852
union select 'Department of State',	1998	,	6074
union select 'Department of State',	1999	,	8914
union select 'Department of State',	2000	,	8113
union select 'Department of State',	2001	,	8371
union select 'Department of State',	2002	,	9859
union select 'Department of State',	2003	,	10353
union select 'Department of State',	2004	,	11951
union select 'Department of State',	2005	,	14595
union select 'Department of State',	2006	,	15438
union select 'Department of State',	2007	,	17084
union select 'Department of State',	2008	,	23124
union select 'Department of State',	2009	,	27164
union select 'Department of State',	2010	,	30285
union select 'Department of State',	2011	,	26879
union select 'Department of State',	2012	,	30122
union select 'Department of State',	2013	,	29584
union select 'Department of State',	2014	,	28586
union select 'Department of State',	2015	,	29118
union select 'Department of State',	2016	,	29491
union select 'Department of State',	2017	,	29648
union select 'Department of State',	2018	,	22571
union select 'Department of State',	2019	,	23015
union select 'Department of State',	2020	,	23474
union select 'Department of State',	2021	,	23947
union select 'Department of the Interior',	1977	,	3741
union select 'Department of the Interior',	1978	,	4639
union select 'Department of the Interior',	1979	,	4766
union select 'Department of the Interior',	1980	,	4674
union select 'Department of the Interior',	1981	,	4403
union select 'Department of the Interior',	1982	,	3805
union select 'Department of the Interior',	1983	,	4952
union select 'Department of the Interior',	1984	,	4906
union select 'Department of the Interior',	1985	,	4995
union select 'Department of the Interior',	1986	,	4574
union select 'Department of the Interior',	1987	,	5265
union select 'Department of the Interior',	1988	,	5237
union select 'Department of the Interior',	1989	,	5463
union select 'Department of the Interior',	1990	,	6669
union select 'Department of the Interior',	1991	,	6856
union select 'Department of the Interior',	1993	,	6857
union select 'Department of the Interior',	1992	,	7077
union select 'Department of the Interior',	1994	,	7453
union select 'Department of the Interior',	1995	,	7512
union select 'Department of the Interior',	1996	,	7202
union select 'Department of the Interior',	1998	,	8146
union select 'Department of the Interior',	1999	,	8097
union select 'Department of the Interior',	2000	,	8363
union select 'Department of the Interior',	2001	,	9584
union select 'Department of the Interior',	2002	,	10768
union select 'Department of the Interior',	2003	,	10416
union select 'Department of the Interior',	2004	,	10137
union select 'Department of the Interior',	2005	,	10553
union select 'Department of the Interior',	2006	,	9940
union select 'Department of the Interior',	2007	,	10333
union select 'Department of the Interior',	2008	,	10556
union select 'Department of the Interior',	2009	,	14817
union select 'Department of the Interior',	2010	,	12843
union select 'Department of the Interior',	2011	,	12279
union select 'Department of the Interior',	2012	,	11486
union select 'Department of the Interior',	2013	,	11761
union select 'Department of the Interior',	2014	,	11898
union select 'Department of the Interior',	2015	,	12538
union select 'Department of the Interior',	2016	,	13959
union select 'Department of the Interior',	2017	,	15861
union select 'Department of the Interior',	2018	,	16389
union select 'Department of the Interior',	2019	,	16518
union select 'Department of the Interior',	2020	,	16447
union select 'Department of the Interior',	2021	,	16554
union select 'Department of the Treasury',	1977	,	49491
union select 'Department of the Treasury',	1978	,	56370
union select 'Department of the Treasury',	1979	,	63622
union select 'Department of the Treasury',	1980	,	89463
union select 'Department of the Treasury',	1981	,	91193
union select 'Department of the Treasury',	1982	,	110329
union select 'Department of the Treasury',	1983	,	116212
union select 'Department of the Treasury',	1984	,	140445
union select 'Department of the Treasury',	1985	,	164826
union select 'Department of the Treasury',	1986	,	178401
union select 'Department of the Treasury',	1987	,	180053
union select 'Department of the Treasury',	1988	,	202112
union select 'Department of the Treasury',	1989	,	228870
union select 'Department of the Treasury',	1990	,	257597
union select 'Department of the Treasury',	1991	,	276501
union select 'Department of the Treasury',	1993	,	298457
union select 'Department of the Treasury',	1992	,	293647
union select 'Department of the Treasury',	1994	,	307256
union select 'Department of the Treasury',	1995	,	351708
union select 'Department of the Treasury',	1996	,	363815
union select 'Department of the Treasury',	1998	,	391348
union select 'Department of the Treasury',	1999	,	386880
union select 'Department of the Treasury',	2000	,	391649
union select 'Department of the Treasury',	2001	,	389999
union select 'Department of the Treasury',	2002	,	371204
union select 'Department of the Treasury',	2003	,	369139
union select 'Department of the Treasury',	2004	,	376958
union select 'Department of the Treasury',	2005	,	411697
union select 'Department of the Treasury',	2006	,	466551
union select 'Department of the Treasury',	2007	,	492728
union select 'Department of the Treasury',	2008	,	751174
union select 'Department of the Treasury',	2009	,	896975
union select 'Department of the Treasury',	2010	,	392169
union select 'Department of the Treasury',	2011	,	494153
union select 'Department of the Treasury',	2012	,	442633
union select 'Department of the Treasury',	2013	,	440900
union select 'Department of the Treasury',	2014	,	442972
union select 'Department of the Treasury',	2015	,	485987
union select 'Department of the Treasury',	2016	,	530480
union select 'Department of the Treasury',	2017	,	622370
union select 'Department of the Treasury',	2018	,	722832
union select 'Department of the Treasury',	2019	,	825056
union select 'Department of the Treasury',	2020	,	904827
union select 'Department of the Treasury',	2021	,	972950
union select 'Department of Transportation',	1977	,	8456
union select 'Department of Transportation',	1978	,	12611
union select 'Department of Transportation',	1979	,	16370
union select 'Department of Transportation',	1980	,	18245
union select 'Department of Transportation',	1981	,	23486
union select 'Department of Transportation',	1982	,	21214
union select 'Department of Transportation',	1983	,	23855
union select 'Department of Transportation',	1984	,	25821
union select 'Department of Transportation',	1985	,	26234
union select 'Department of Transportation',	1986	,	25775
union select 'Department of Transportation',	1987	,	23535
union select 'Department of Transportation',	1988	,	24639
union select 'Department of Transportation',	1989	,	25483
union select 'Department of Transportation',	1990	,	26971
union select 'Department of Transportation',	1991	,	27545
union select 'Department of Transportation',	1993	,	36399
union select 'Department of Transportation',	1992	,	32761
union select 'Department of Transportation',	1994	,	38662
union select 'Department of Transportation',	1995	,	34382
union select 'Department of Transportation',	1996	,	32012
union select 'Department of Transportation',	1998	,	40412
union select 'Department of Transportation',	1999	,	46207
union select 'Department of Transportation',	2000	,	49965
union select 'Department of Transportation',	2001	,	61570
union select 'Department of Transportation',	2002	,	60336
union select 'Department of Transportation',	2003	,	54415
union select 'Department of Transportation',	2004	,	60854
union select 'Department of Transportation',	2005	,	64543
union select 'Department of Transportation',	2006	,	64444
union select 'Department of Transportation',	2007	,	65994
union select 'Department of Transportation',	2008	,	67974
union select 'Department of Transportation',	2009	,	112344
union select 'Department of Transportation',	2010	,	84342
union select 'Department of Transportation',	2011	,	70512
union select 'Department of Transportation',	2012	,	70114
union select 'Department of Transportation',	2013	,	82816
union select 'Department of Transportation',	2014	,	71334
union select 'Department of Transportation',	2015	,	71898
union select 'Department of Transportation',	2016	,	75810
union select 'Department of Transportation',	2017	,	95350
union select 'Department of Transportation',	2018	,	108774
union select 'Department of Transportation',	2019	,	112137
union select 'Department of Transportation',	2020	,	121668
union select 'Department of Transportation',	2021	,	119022
union select 'Department of Veterans Affairs',	1977	,	19043
union select 'Department of Veterans Affairs',	1978	,	19013
union select 'Department of Veterans Affairs',	1979	,	20471
union select 'Department of Veterans Affairs',	1980	,	21177
union select 'Department of Veterans Affairs',	1981	,	23136
union select 'Department of Veterans Affairs',	1982	,	24948
union select 'Department of Veterans Affairs',	1983	,	25324
union select 'Department of Veterans Affairs',	1984	,	26464
union select 'Department of Veterans Affairs',	1985	,	27288
union select 'Department of Veterans Affairs',	1986	,	27062
union select 'Department of Veterans Affairs',	1987	,	27343
union select 'Department of Veterans Affairs',	1988	,	29414
union select 'Department of Veterans Affairs',	1989	,	29866
union select 'Department of Veterans Affairs',	1990	,	30438
union select 'Department of Veterans Affairs',	1991	,	33129
union select 'Department of Veterans Affairs',	1993	,	35993
union select 'Department of Veterans Affairs',	1992	,	33907
union select 'Department of Veterans Affairs',	1994	,	36804
union select 'Department of Veterans Affairs',	1995	,	38028
union select 'Department of Veterans Affairs',	1996	,	38690
union select 'Department of Veterans Affairs',	1998	,	42717
union select 'Department of Veterans Affairs',	1999	,	44070
union select 'Department of Veterans Affairs',	2000	,	45462
union select 'Department of Veterans Affairs',	2001	,	47410
union select 'Department of Veterans Affairs',	2002	,	51894
union select 'Department of Veterans Affairs',	2003	,	58964
union select 'Department of Veterans Affairs',	2004	,	60279
union select 'Department of Veterans Affairs',	2005	,	68889
union select 'Department of Veterans Affairs',	2006	,	70937
union select 'Department of Veterans Affairs',	2007	,	79547
union select 'Department of Veterans Affairs',	2008	,	88401
union select 'Department of Veterans Affairs',	2009	,	96929
union select 'Department of Veterans Affairs',	2010	,	124305
union select 'Department of Veterans Affairs',	2011	,	122798
union select 'Department of Veterans Affairs',	2012	,	124030
union select 'Department of Veterans Affairs',	2013	,	135984
union select 'Department of Veterans Affairs',	2014	,	165657
union select 'Department of Veterans Affairs',	2015	,	160466
union select 'Department of Veterans Affairs',	2016	,	163864
union select 'Department of Veterans Affairs',	2017	,	178695
union select 'Department of Veterans Affairs',	2018	,	182918
union select 'Department of Veterans Affairs',	2019	,	194237
union select 'Department of Veterans Affairs',	2020	,	202705
union select 'Department of Veterans Affairs',	2021	,	211231
union select 'Environmental Protection Agency',	1977	,	2764
union select 'Environmental Protection Agency',	1978	,	5499
union select 'Environmental Protection Agency',	1979	,	5403
union select 'Environmental Protection Agency',	1980	,	4669
union select 'Environmental Protection Agency',	1981	,	3026
union select 'Environmental Protection Agency',	1982	,	3674
union select 'Environmental Protection Agency',	1983	,	3688
union select 'Environmental Protection Agency',	1984	,	4064
union select 'Environmental Protection Agency',	1985	,	4346
union select 'Environmental Protection Agency',	1986	,	3446
union select 'Environmental Protection Agency',	1987	,	5344
union select 'Environmental Protection Agency',	1988	,	4968
union select 'Environmental Protection Agency',	1989	,	5081
union select 'Environmental Protection Agency',	1990	,	5380
union select 'Environmental Protection Agency',	1991	,	6004
union select 'Environmental Protection Agency',	1993	,	6737
union select 'Environmental Protection Agency',	1992	,	6461
union select 'Environmental Protection Agency',	1994	,	6436
union select 'Environmental Protection Agency',	1995	,	5710
union select 'Environmental Protection Agency',	1996	,	6268
union select 'Environmental Protection Agency',	1998	,	7022
union select 'Environmental Protection Agency',	1999	,	7243
union select 'Environmental Protection Agency',	2000	,	7313
union select 'Environmental Protection Agency',	2001	,	7601
union select 'Environmental Protection Agency',	2002	,	7841
union select 'Environmental Protection Agency',	2003	,	7925
union select 'Environmental Protection Agency',	2004	,	8390
union select 'Environmental Protection Agency',	2005	,	7959
union select 'Environmental Protection Agency',	2006	,	7583
union select 'Environmental Protection Agency',	2007	,	7533
union select 'Environmental Protection Agency',	2008	,	7393
union select 'Environmental Protection Agency',	2009	,	14754
union select 'Environmental Protection Agency',	2010	,	10165
union select 'Environmental Protection Agency',	2011	,	8565
union select 'Environmental Protection Agency',	2012	,	10785
union select 'Environmental Protection Agency',	2013	,	8413
union select 'Environmental Protection Agency',	2014	,	9124
union select 'Environmental Protection Agency',	2015	,	7845
union select 'Environmental Protection Agency',	2016	,	8134
union select 'Environmental Protection Agency',	2017	,	8585
union select 'Environmental Protection Agency',	2018	,	8599
union select 'Environmental Protection Agency',	2019	,	8671
union select 'Environmental Protection Agency',	2020	,	8850
union select 'Environmental Protection Agency',	2021	,	9024
union select 'Executive Office of the President',	1977	,	79
union select 'Executive Office of the President',	1978	,	79
union select 'Executive Office of the President',	1979	,	83
union select 'Executive Office of the President',	1980	,	102
union select 'Executive Office of the President',	1981	,	104
union select 'Executive Office of the President',	1982	,	94
union select 'Executive Office of the President',	1983	,	102
union select 'Executive Office of the President',	1984	,	110
union select 'Executive Office of the President',	1985	,	117
union select 'Executive Office of the President',	1986	,	109
union select 'Executive Office of the President',	1987	,	119
union select 'Executive Office of the President',	1988	,	126
union select 'Executive Office of the President',	1989	,	131
union select 'Executive Office of the President',	1990	,	179
union select 'Executive Office of the President',	1991	,	185
union select 'Executive Office of the President',	1993	,	237
union select 'Executive Office of the President',	1992	,	202
union select 'Executive Office of the President',	1994	,	237
union select 'Executive Office of the President',	1995	,	184
union select 'Executive Office of the President',	1996	,	204
union select 'Executive Office of the President',	1998	,	246
union select 'Executive Office of the President',	1999	,	428
union select 'Executive Office of the President',	2000	,	272
union select 'Executive Office of the President',	2001	,	3826
union select 'Executive Office of the President',	2002	,	330
union select 'Executive Office of the President',	2003	,	2568
union select 'Executive Office of the President',	2004	,	18804
union select 'Executive Office of the President',	2005	,	369
union select 'Executive Office of the President',	2006	,	341
union select 'Executive Office of the President',	2007	,	390
union select 'Executive Office of the President',	2008	,	289
union select 'Executive Office of the President',	2009	,	374
union select 'Executive Office of the President',	2010	,	432
union select 'Executive Office of the President',	2011	,	385
union select 'Executive Office of the President',	2012	,	384
union select 'Executive Office of the President',	2013	,	365
union select 'Executive Office of the President',	2014	,	378
union select 'Executive Office of the President',	2015	,	3508
union select 'Executive Office of the President',	2016	,	397
union select 'Executive Office of the President',	2017	,	419
union select 'Executive Office of the President',	2018	,	418
union select 'Executive Office of the President',	2019	,	427
union select 'Executive Office of the President',	2020	,	435
union select 'Executive Office of the President',	2021	,	444
union select 'General Services Administration',	1977	,	312
union select 'General Services Administration',	1978	,	137
union select 'General Services Administration',	1979	,	333
union select 'General Services Administration',	1980	,	716
union select 'General Services Administration',	1981	,	1121
union select 'General Services Administration',	1982	,	623
union select 'General Services Administration',	1983	,	812
union select 'General Services Administration',	1984	,	641
union select 'General Services Administration',	1985	,	738
union select 'General Services Administration',	1986	,	779
union select 'General Services Administration',	1987	,	579
union select 'General Services Administration',	1988	,	244
union select 'General Services Administration',	1989	,	33
union select 'General Services Administration',	1990	,	2871
union select 'General Services Administration',	1991	,	1902
union select 'General Services Administration',	1993	,	537
union select 'General Services Administration',	1992	,	304
union select 'General Services Administration',	1994	,	546
union select 'General Services Administration',	1995	,	81
union select 'General Services Administration',	1996	,	77
union select 'General Services Administration',	1998	,	1
union select 'General Services Administration',	1999	,	233
union select 'General Services Administration',	2000	,	-304
union select 'General Services Administration',	2001	,	161
union select 'General Services Administration',	2002	,	237
union select 'General Services Administration',	2003	,	1348
union select 'General Services Administration',	2004	,	21
union select 'General Services Administration',	2005	,	297
union select 'General Services Administration',	2006	,	722
union select 'General Services Administration',	2007	,	89
union select 'General Services Administration',	2008	,	340
union select 'General Services Administration',	2009	,	6290
union select 'General Services Administration',	2010	,	261
union select 'General Services Administration',	2011	,	-1009
union select 'General Services Administration',	2012	,	-977
union select 'General Services Administration',	2013	,	-1255
union select 'General Services Administration',	2014	,	1932
union select 'General Services Administration',	2015	,	-481
union select 'General Services Administration',	2016	,	600
union select 'General Services Administration',	2017	,	3319
union select 'General Services Administration',	2018	,	336
union select 'General Services Administration',	2019	,	344
union select 'General Services Administration',	2020	,	354
union select 'General Services Administration',	2021	,	358
union select 'International Assistance Programs',	1977	,	5334
union select 'International Assistance Programs',	1978	,	8737
union select 'International Assistance Programs',	1979	,	7272
union select 'International Assistance Programs',	1980	,	12678
union select 'International Assistance Programs',	1981	,	16514
union select 'International Assistance Programs',	1982	,	11031
union select 'International Assistance Programs',	1983	,	6589
union select 'International Assistance Programs',	1984	,	18945
union select 'International Assistance Programs',	1985	,	20362
union select 'International Assistance Programs',	1986	,	10707
union select 'International Assistance Programs',	1987	,	13002
union select 'International Assistance Programs',	1988	,	11655
union select 'International Assistance Programs',	1989	,	10951
union select 'International Assistance Programs',	1990	,	12408
union select 'International Assistance Programs',	1991	,	15727
union select 'International Assistance Programs',	1993	,	24658
union select 'International Assistance Programs',	1992	,	13436
union select 'International Assistance Programs',	1994	,	9543
union select 'International Assistance Programs',	1995	,	14906
union select 'International Assistance Programs',	1996	,	10178
union select 'International Assistance Programs',	1998	,	7056
union select 'International Assistance Programs',	1999	,	27437
union select 'International Assistance Programs',	2000	,	14057
union select 'International Assistance Programs',	2001	,	11399
union select 'International Assistance Programs',	2002	,	14438
union select 'International Assistance Programs',	2003	,	18457
union select 'International Assistance Programs',	2004	,	15603
union select 'International Assistance Programs',	2005	,	18249
union select 'International Assistance Programs',	2006	,	18695
union select 'International Assistance Programs',	2007	,	51359
union select 'International Assistance Programs',	2008	,	24008
union select 'International Assistance Programs',	2009	,	34651
union select 'International Assistance Programs',	2010	,	28127
union select 'International Assistance Programs',	2011	,	25564
union select 'International Assistance Programs',	2012	,	63185
union select 'International Assistance Programs',	2013	,	10775
union select 'International Assistance Programs',	2014	,	27987
union select 'International Assistance Programs',	2015	,	32730
union select 'International Assistance Programs',	2016	,	30145
union select 'International Assistance Programs',	2017	,	27763
union select 'International Assistance Programs',	2018	,	13326
union select 'International Assistance Programs',	2019	,	15628
union select 'International Assistance Programs',	2020	,	18531
union select 'International Assistance Programs',	2021	,	21081
union select 'Judicial Branch',	1977	,	431
union select 'Judicial Branch',	1978	,	459
union select 'Judicial Branch',	1979	,	521
union select 'Judicial Branch',	1980	,	609
union select 'Judicial Branch',	1981	,	656
union select 'Judicial Branch',	1982	,	733
union select 'Judicial Branch',	1983	,	823
union select 'Judicial Branch',	1984	,	904
union select 'Judicial Branch',	1985	,	1055
union select 'Judicial Branch',	1986	,	1045
union select 'Judicial Branch',	1987	,	1273
union select 'Judicial Branch',	1988	,	1344
union select 'Judicial Branch',	1989	,	1481
union select 'Judicial Branch',	1990	,	1752
union select 'Judicial Branch',	1991	,	2118
union select 'Judicial Branch',	1993	,	2613
union select 'Judicial Branch',	1992	,	2445
union select 'Judicial Branch',	1994	,	2832
union select 'Judicial Branch',	1995	,	2998
union select 'Judicial Branch',	1996	,	3174
union select 'Judicial Branch',	1998	,	3543
union select 'Judicial Branch',	1999	,	3807
union select 'Judicial Branch',	2000	,	4067
union select 'Judicial Branch',	2001	,	4459
union select 'Judicial Branch',	2002	,	4970
union select 'Judicial Branch',	2003	,	5168
union select 'Judicial Branch',	2004	,	5440
union select 'Judicial Branch',	2005	,	5726
union select 'Judicial Branch',	2006	,	5993
union select 'Judicial Branch',	2007	,	6180
union select 'Judicial Branch',	2008	,	6518
union select 'Judicial Branch',	2009	,	6787
union select 'Judicial Branch',	2010	,	7214
union select 'Judicial Branch',	2011	,	7205
union select 'Judicial Branch',	2012	,	7240
union select 'Judicial Branch',	2013	,	6926
union select 'Judicial Branch',	2014	,	7284
union select 'Judicial Branch',	2015	,	7404
union select 'Judicial Branch',	2016	,	7591
union select 'Judicial Branch',	2017	,	7837
union select 'Judicial Branch',	2018	,	7998
union select 'Judicial Branch',	2019	,	8180
union select 'Judicial Branch',	2020	,	8371
union select 'Judicial Branch',	2021	,	8554
union select 'Legislative Branch',	1977	,	1057
union select 'Legislative Branch',	1978	,	1087
union select 'Legislative Branch',	1979	,	1131
union select 'Legislative Branch',	1980	,	1318
union select 'Legislative Branch',	1981	,	1251
union select 'Legislative Branch',	1982	,	1414
union select 'Legislative Branch',	1983	,	1687
union select 'Legislative Branch',	1984	,	1768
union select 'Legislative Branch',	1985	,	1703
union select 'Legislative Branch',	1986	,	1720
union select 'Legislative Branch',	1987	,	1873
union select 'Legislative Branch',	1988	,	2123
union select 'Legislative Branch',	1989	,	2250
union select 'Legislative Branch',	1990	,	2248
union select 'Legislative Branch',	1991	,	2493
union select 'Legislative Branch',	1993	,	2621
union select 'Legislative Branch',	1992	,	2632
union select 'Legislative Branch',	1994	,	2612
union select 'Legislative Branch',	1995	,	2682
union select 'Legislative Branch',	1996	,	2454
union select 'Legislative Branch',	1998	,	2627
union select 'Legislative Branch',	1999	,	2943
union select 'Legislative Branch',	2000	,	2800
union select 'Legislative Branch',	2001	,	3149
union select 'Legislative Branch',	2002	,	3613
union select 'Legislative Branch',	2003	,	3830
union select 'Legislative Branch',	2004	,	3937
union select 'Legislative Branch',	2005	,	4036
union select 'Legislative Branch',	2006	,	4219
union select 'Legislative Branch',	2007	,	4286
union select 'Legislative Branch',	2008	,	4447
union select 'Legislative Branch',	2009	,	4977
union select 'Legislative Branch',	2010	,	4893
union select 'Legislative Branch',	2011	,	4737
union select 'Legislative Branch',	2012	,	4542
union select 'Legislative Branch',	2013	,	4258
union select 'Legislative Branch',	2014	,	4462
union select 'Legislative Branch',	2015	,	4506
union select 'Legislative Branch',	2016	,	4582
union select 'Legislative Branch',	2017	,	4959
union select 'Legislative Branch',	2018	,	5060
union select 'Legislative Branch',	2019	,	5163
union select 'Legislative Branch',	2020	,	5264
union select 'Legislative Branch',	2021	,	5367
union select 'National Aeronautics and Space Administration',	1977	,	3876
union select 'National Aeronautics and Space Administration',	1978	,	4244
union select 'National Aeronautics and Space Administration',	1979	,	4743
union select 'National Aeronautics and Space Administration',	1980	,	5350
union select 'National Aeronautics and Space Administration',	1981	,	5634
union select 'National Aeronautics and Space Administration',	1982	,	6200
union select 'National Aeronautics and Space Administration',	1983	,	7065
union select 'National Aeronautics and Space Administration',	1984	,	7458
union select 'National Aeronautics and Space Administration',	1985	,	7573
union select 'National Aeronautics and Space Administration',	1986	,	7807
union select 'National Aeronautics and Space Administration',	1987	,	10923
union select 'National Aeronautics and Space Administration',	1988	,	9061
union select 'National Aeronautics and Space Administration',	1989	,	10969
union select 'National Aeronautics and Space Administration',	1990	,	12324
union select 'National Aeronautics and Space Administration',	1991	,	14016
union select 'National Aeronautics and Space Administration',	1993	,	14310
union select 'National Aeronautics and Space Administration',	1992	,	14317
union select 'National Aeronautics and Space Administration',	1994	,	14570
union select 'National Aeronautics and Space Administration',	1995	,	13854
union select 'National Aeronautics and Space Administration',	1996	,	13886
union select 'National Aeronautics and Space Administration',	1998	,	13637
union select 'National Aeronautics and Space Administration',	1999	,	13627
union select 'National Aeronautics and Space Administration',	2000	,	13588
union select 'National Aeronautics and Space Administration',	2001	,	14254
union select 'National Aeronautics and Space Administration',	2002	,	14868
union select 'National Aeronautics and Space Administration',	2003	,	15449
union select 'National Aeronautics and Space Administration',	2004	,	15342
union select 'National Aeronautics and Space Administration',	2005	,	16187
union select 'National Aeronautics and Space Administration',	2006	,	16570
union select 'National Aeronautics and Space Administration',	2007	,	16275
union select 'National Aeronautics and Space Administration',	2008	,	17209
union select 'National Aeronautics and Space Administration',	2009	,	18777
union select 'National Aeronautics and Space Administration',	2010	,	18719
union select 'National Aeronautics and Space Administration',	2011	,	18432
union select 'National Aeronautics and Space Administration',	2012	,	17773
union select 'National Aeronautics and Space Administration',	2013	,	16868
union select 'National Aeronautics and Space Administration',	2014	,	17644
union select 'National Aeronautics and Space Administration',	2015	,	18009
union select 'National Aeronautics and Space Administration',	2016	,	19272
union select 'National Aeronautics and Space Administration',	2017	,	19012
union select 'National Aeronautics and Space Administration',	2018	,	18814
union select 'National Aeronautics and Space Administration',	2019	,	19388
union select 'National Aeronautics and Space Administration',	2020	,	19866
union select 'National Aeronautics and Space Administration',	2021	,	20355
union select 'National Science Foundation',	1977	,	783
union select 'National Science Foundation',	1978	,	868
union select 'National Science Foundation',	1979	,	914
union select 'National Science Foundation',	1980	,	991
union select 'National Science Foundation',	1981	,	1031
union select 'National Science Foundation',	1982	,	1006
union select 'National Science Foundation',	1983	,	1104
union select 'National Science Foundation',	1984	,	1323
union select 'National Science Foundation',	1985	,	1502
union select 'National Science Foundation',	1986	,	1458
union select 'National Science Foundation',	1987	,	1623
union select 'National Science Foundation',	1988	,	1717
union select 'National Science Foundation',	1989	,	1922
union select 'National Science Foundation',	1990	,	2084
union select 'National Science Foundation',	1991	,	2316
union select 'National Science Foundation',	1993	,	2734
union select 'National Science Foundation',	1992	,	2573
union select 'National Science Foundation',	1994	,	3018
union select 'National Science Foundation',	1995	,	3227
union select 'National Science Foundation',	1996	,	3219
union select 'National Science Foundation',	1998	,	3431
union select 'National Science Foundation',	1999	,	3702
union select 'National Science Foundation',	2000	,	3961
union select 'National Science Foundation',	2001	,	4519
union select 'National Science Foundation',	2002	,	4884
union select 'National Science Foundation',	2003	,	5384
union select 'National Science Foundation',	2004	,	5589
union select 'National Science Foundation',	2005	,	5565
union select 'National Science Foundation',	2006	,	5690
union select 'National Science Foundation',	2007	,	6028
union select 'National Science Foundation',	2008	,	6197
union select 'National Science Foundation',	2009	,	9579
union select 'National Science Foundation',	2010	,	6963
union select 'National Science Foundation',	2011	,	6910
union select 'National Science Foundation',	2012	,	7159
union select 'National Science Foundation',	2013	,	6997
union select 'National Science Foundation',	2014	,	7296
union select 'National Science Foundation',	2015	,	7485
union select 'National Science Foundation',	2016	,	7560
union select 'National Science Foundation',	2017	,	8067
union select 'National Science Foundation',	2018	,	8218
union select 'National Science Foundation',	2019	,	8382
union select 'National Science Foundation',	2020	,	8547
union select 'National Science Foundation',	2021	,	8716
union select 'Other Defense Civil Programs',	1977	,	8273
union select 'Other Defense Civil Programs',	1978	,	9213
union select 'Other Defense Civil Programs',	1979	,	10319
union select 'Other Defense Civil Programs',	1980	,	12020
union select 'Other Defense Civil Programs',	1981	,	13898
union select 'Other Defense Civil Programs',	1982	,	15043
union select 'Other Defense Civil Programs',	1983	,	16218
union select 'Other Defense Civil Programs',	1984	,	16587
union select 'Other Defense Civil Programs',	1985	,	17270
union select 'Other Defense Civil Programs',	1986	,	17519
union select 'Other Defense Civil Programs',	1987	,	18034
union select 'Other Defense Civil Programs',	1988	,	19121
union select 'Other Defense Civil Programs',	1989	,	20354
union select 'Other Defense Civil Programs',	1990	,	21802
union select 'Other Defense Civil Programs',	1991	,	23399
union select 'Other Defense Civil Programs',	1993	,	26079
union select 'Other Defense Civil Programs',	1992	,	24795
union select 'Other Defense Civil Programs',	1994	,	27050
union select 'Other Defense Civil Programs',	1995	,	28072
union select 'Other Defense Civil Programs',	1996	,	29094
union select 'Other Defense Civil Programs',	1998	,	31321
union select 'Other Defense Civil Programs',	1999	,	32079
union select 'Other Defense Civil Programs',	2000	,	32924
union select 'Other Defense Civil Programs',	2001	,	34339
union select 'Other Defense Civil Programs',	2002	,	35383
union select 'Other Defense Civil Programs',	2003	,	39941
union select 'Other Defense Civil Programs',	2004	,	41846
union select 'Other Defense Civil Programs',	2005	,	43716
union select 'Other Defense Civil Programs',	2006	,	44672
union select 'Other Defense Civil Programs',	2007	,	47187
union select 'Other Defense Civil Programs',	2008	,	45430
union select 'Other Defense Civil Programs',	2009	,	57482
union select 'Other Defense Civil Programs',	2010	,	54786
union select 'Other Defense Civil Programs',	2011	,	51073
union select 'Other Defense Civil Programs',	2012	,	81067
union select 'Other Defense Civil Programs',	2013	,	57553
union select 'Other Defense Civil Programs',	2014	,	57514
union select 'Other Defense Civil Programs',	2015	,	62584
union select 'Other Defense Civil Programs',	2016	,	59021
union select 'Other Defense Civil Programs',	2017	,	59315
union select 'Other Defense Civil Programs',	2018	,	61513
union select 'Other Defense Civil Programs',	2019	,	63569
union select 'Other Defense Civil Programs',	2020	,	64880
union select 'Other Defense Civil Programs',	2021	,	66611
union select 'Other Independent Agencies (Off-Budget)',	1977	,	0
union select 'Other Independent Agencies (Off-Budget)',	1978	,	0
union select 'Other Independent Agencies (Off-Budget)',	1979	,	0
union select 'Other Independent Agencies (Off-Budget)',	1980	,	0
union select 'Other Independent Agencies (Off-Budget)',	1981	,	0
union select 'Other Independent Agencies (Off-Budget)',	1982	,	0
union select 'Other Independent Agencies (Off-Budget)',	1983	,	200
union select 'Other Independent Agencies (Off-Budget)',	1984	,	919
union select 'Other Independent Agencies (Off-Budget)',	1985	,	1430
union select 'Other Independent Agencies (Off-Budget)',	1986	,	1788
union select 'Other Independent Agencies (Off-Budget)',	1987	,	2294
union select 'Other Independent Agencies (Off-Budget)',	1988	,	941
union select 'Other Independent Agencies (Off-Budget)',	1989	,	1610
union select 'Other Independent Agencies (Off-Budget)',	1990	,	3083
union select 'Other Independent Agencies (Off-Budget)',	1991	,	3301
union select 'Other Independent Agencies (Off-Budget)',	1993	,	2239
union select 'Other Independent Agencies (Off-Budget)',	1992	,	2198
union select 'Other Independent Agencies (Off-Budget)',	1994	,	2732
union select 'Other Independent Agencies (Off-Budget)',	1995	,	2554
union select 'Other Independent Agencies (Off-Budget)',	1996	,	3441
union select 'Other Independent Agencies (Off-Budget)',	1998	,	6359
union select 'Other Independent Agencies (Off-Budget)',	1999	,	5607
union select 'Other Independent Agencies (Off-Budget)',	2000	,	3712
union select 'Other Independent Agencies (Off-Budget)',	2001	,	4064
union select 'Other Independent Agencies (Off-Budget)',	2002	,	3071
union select 'Other Independent Agencies (Off-Budget)',	2003	,	5386
union select 'Other Independent Agencies (Off-Budget)',	2004	,	2057
union select 'Other Independent Agencies (Off-Budget)',	2005	,	1005
union select 'Other Independent Agencies (Off-Budget)',	2006	,	3693
union select 'Other Independent Agencies (Off-Budget)',	2007	,	8899
union select 'Other Independent Agencies (Off-Budget)',	2008	,	9677
union select 'Other Independent Agencies (Off-Budget)',	2009	,	6578
union select 'Other Independent Agencies (Off-Budget)',	2010	,	4700
union select 'Other Independent Agencies (Off-Budget)',	2011	,	996
union select 'Other Independent Agencies (Off-Budget)',	2012	,	2255
union select 'Other Independent Agencies (Off-Budget)',	2013	,	0
union select 'Other Independent Agencies (Off-Budget)',	2014	,	-3
union select 'Other Independent Agencies (Off-Budget)',	2015	,	0
union select 'Other Independent Agencies (Off-Budget)',	2016	,	-143
union select 'Other Independent Agencies (Off-Budget)',	2017	,	277
union select 'Other Independent Agencies (Off-Budget)',	2018	,	282
union select 'Other Independent Agencies (Off-Budget)',	2019	,	288
union select 'Other Independent Agencies (Off-Budget)',	2020	,	294
union select 'Other Independent Agencies (Off-Budget)',	2021	,	299
union select 'Other Independent Agencies (On-Budget)',	1977	,	8692
union select 'Other Independent Agencies (On-Budget)',	1978	,	8981
union select 'Other Independent Agencies (On-Budget)',	1979	,	10957
union select 'Other Independent Agencies (On-Budget)',	1980	,	28922
union select 'Other Independent Agencies (On-Budget)',	1981	,	17122
union select 'Other Independent Agencies (On-Budget)',	1982	,	11647
union select 'Other Independent Agencies (On-Budget)',	1983	,	9183
union select 'Other Independent Agencies (On-Budget)',	1984	,	10100
union select 'Other Independent Agencies (On-Budget)',	1985	,	10091
union select 'Other Independent Agencies (On-Budget)',	1986	,	11495
union select 'Other Independent Agencies (On-Budget)',	1987	,	12993
union select 'Other Independent Agencies (On-Budget)',	1988	,	20873
union select 'Other Independent Agencies (On-Budget)',	1989	,	61160
union select 'Other Independent Agencies (On-Budget)',	1990	,	56032
union select 'Other Independent Agencies (On-Budget)',	1991	,	83643
union select 'Other Independent Agencies (On-Budget)',	1993	,	16415
union select 'Other Independent Agencies (On-Budget)',	1992	,	50221
union select 'Other Independent Agencies (On-Budget)',	1994	,	32061
union select 'Other Independent Agencies (On-Budget)',	1995	,	14324
union select 'Other Independent Agencies (On-Budget)',	1996	,	12500
union select 'Other Independent Agencies (On-Budget)',	1998	,	18130
union select 'Other Independent Agencies (On-Budget)',	1999	,	12901
union select 'Other Independent Agencies (On-Budget)',	2000	,	14917
union select 'Other Independent Agencies (On-Budget)',	2001	,	14595
union select 'Other Independent Agencies (On-Budget)',	2002	,	18724
union select 'Other Independent Agencies (On-Budget)',	2003	,	14486
union select 'Other Independent Agencies (On-Budget)',	2004	,	15241
union select 'Other Independent Agencies (On-Budget)',	2005	,	16695
union select 'Other Independent Agencies (On-Budget)',	2006	,	16285
union select 'Other Independent Agencies (On-Budget)',	2007	,	15517
union select 'Other Independent Agencies (On-Budget)',	2008	,	31701
union select 'Other Independent Agencies (On-Budget)',	2009	,	49837
union select 'Other Independent Agencies (On-Budget)',	2010	,	17855
union select 'Other Independent Agencies (On-Budget)',	2011	,	19760
union select 'Other Independent Agencies (On-Budget)',	2012	,	23324
union select 'Other Independent Agencies (On-Budget)',	2013	,	25258
union select 'Other Independent Agencies (On-Budget)',	2014	,	26409
union select 'Other Independent Agencies (On-Budget)',	2015	,	29533
union select 'Other Independent Agencies (On-Budget)',	2016	,	29576
union select 'Other Independent Agencies (On-Budget)',	2017	,	42695
union select 'Other Independent Agencies (On-Budget)',	2018	,	33679
union select 'Other Independent Agencies (On-Budget)',	2019	,	33376
union select 'Other Independent Agencies (On-Budget)',	2020	,	34553
union select 'Other Independent Agencies (On-Budget)',	2021	,	36472
union select 'Small Business Administration',	1977	,	1068
union select 'Small Business Administration',	1978	,	3555
union select 'Small Business Administration',	1979	,	2081
union select 'Small Business Administration',	1980	,	2145
union select 'Small Business Administration',	1981	,	1355
union select 'Small Business Administration',	1982	,	748
union select 'Small Business Administration',	1983	,	1278
union select 'Small Business Administration',	1984	,	971
union select 'Small Business Administration',	1985	,	1254
union select 'Small Business Administration',	1986	,	714
union select 'Small Business Administration',	1987	,	604
union select 'Small Business Administration',	1988	,	418
union select 'Small Business Administration',	1989	,	421
union select 'Small Business Administration',	1990	,	928
union select 'Small Business Administration',	1991	,	464
union select 'Small Business Administration',	1993	,	1177
union select 'Small Business Administration',	1992	,	1891
union select 'Small Business Administration',	1994	,	2058
union select 'Small Business Administration',	1995	,	792
union select 'Small Business Administration',	1996	,	1089
union select 'Small Business Administration',	1998	,	243
union select 'Small Business Administration',	1999	,	342
union select 'Small Business Administration',	2000	,	100
union select 'Small Business Administration',	2001	,	-68
union select 'Small Business Administration',	2002	,	604
union select 'Small Business Administration',	2003	,	1625
union select 'Small Business Administration',	2004	,	4222
union select 'Small Business Administration',	2005	,	3345
union select 'Small Business Administration',	2006	,	1755
union select 'Small Business Administration',	2007	,	528
union select 'Small Business Administration',	2008	,	1317
union select 'Small Business Administration',	2009	,	2564
union select 'Small Business Administration',	2010	,	6472
union select 'Small Business Administration',	2011	,	5454
union select 'Small Business Administration',	2012	,	2724
union select 'Small Business Administration',	2013	,	952
union select 'Small Business Administration',	2014	,	139
union select 'Small Business Administration',	2015	,	-734
union select 'Small Business Administration',	2016	,	-503
union select 'Small Business Administration',	2017	,	2077
union select 'Small Business Administration',	2018	,	736
union select 'Small Business Administration',	2019	,	748
union select 'Small Business Administration',	2020	,	766
union select 'Small Business Administration',	2021	,	781
union select 'Social Security Administration (Off-Budget)',	1977	,	84909
union select 'Social Security Administration (Off-Budget)',	1978	,	93712
union select 'Social Security Administration (Off-Budget)',	1979	,	104233
union select 'Social Security Administration (Off-Budget)',	1980	,	119278
union select 'Social Security Administration (Off-Budget)',	1981	,	140404
union select 'Social Security Administration (Off-Budget)',	1982	,	156238
union select 'Social Security Administration (Off-Budget)',	1983	,	150984
union select 'Social Security Administration (Off-Budget)',	1984	,	171710
union select 'Social Security Administration (Off-Budget)',	1985	,	184648
union select 'Social Security Administration (Off-Budget)',	1986	,	191782
union select 'Social Security Administration (Off-Budget)',	1987	,	203461
union select 'Social Security Administration (Off-Budget)',	1988	,	216285
union select 'Social Security Administration (Off-Budget)',	1989	,	228432
union select 'Social Security Administration (Off-Budget)',	1990	,	246875
union select 'Social Security Administration (Off-Budget)',	1991	,	268531
union select 'Social Security Administration (Off-Budget)',	1993	,	300089
union select 'Social Security Administration (Off-Budget)',	1992	,	283365
union select 'Social Security Administration (Off-Budget)',	1994	,	315450
union select 'Social Security Administration (Off-Budget)',	1995	,	327808
union select 'Social Security Administration (Off-Budget)',	1996	,	346315
union select 'Social Security Administration (Off-Budget)',	1998	,	371321
union select 'Social Security Administration (Off-Budget)',	1999	,	380267
union select 'Social Security Administration (Off-Budget)',	2000	,	398770
union select 'Social Security Administration (Off-Budget)',	2001	,	428670
union select 'Social Security Administration (Off-Budget)',	2002	,	447951
union select 'Social Security Administration (Off-Budget)',	2003	,	463279
union select 'Social Security Administration (Off-Budget)',	2004	,	481699
union select 'Social Security Administration (Off-Budget)',	2005	,	515130
union select 'Social Security Administration (Off-Budget)',	2006	,	536159
union select 'Social Security Administration (Off-Budget)',	2007	,	569627
union select 'Social Security Administration (Off-Budget)',	2008	,	601826
union select 'Social Security Administration (Off-Budget)',	2009	,	654799
union select 'Social Security Administration (Off-Budget)',	2010	,	683908
union select 'Social Security Administration (Off-Budget)',	2011	,	629821
union select 'Social Security Administration (Off-Budget)',	2012	,	637241
union select 'Social Security Administration (Off-Budget)',	2013	,	760588
union select 'Social Security Administration (Off-Budget)',	2014	,	828419
union select 'Social Security Administration (Off-Budget)',	2015	,	861067
union select 'Social Security Administration (Off-Budget)',	2016	,	900187
union select 'Social Security Administration (Off-Budget)',	2017	,	937004
union select 'Social Security Administration (Off-Budget)',	2018	,	993209
union select 'Social Security Administration (Off-Budget)',	2019	,	1053826
union select 'Social Security Administration (Off-Budget)',	2020	,	1117622
union select 'Social Security Administration (Off-Budget)',	2021	,	1180188
union select 'Social Security Administration (On-Budget)',	1977	,	6612
union select 'Social Security Administration (On-Budget)',	1978	,	5991
union select 'Social Security Administration (On-Budget)',	1979	,	6266
union select 'Social Security Administration (On-Budget)',	1980	,	7144
union select 'Social Security Administration (On-Budget)',	1981	,	7899
union select 'Social Security Administration (On-Budget)',	1982	,	8613
union select 'Social Security Administration (On-Budget)',	1983	,	30451
union select 'Social Security Administration (On-Budget)',	1984	,	17831
union select 'Social Security Administration (On-Budget)',	1985	,	19968
union select 'Social Security Administration (On-Budget)',	1986	,	15931
union select 'Social Security Administration (On-Budget)',	1987	,	16412
union select 'Social Security Administration (On-Budget)',	1988	,	18330
union select 'Social Security Administration (On-Budget)',	1989	,	18628
union select 'Social Security Administration (On-Budget)',	1990	,	17425
union select 'Social Security Administration (On-Budget)',	1991	,	20576
union select 'Social Security Administration (On-Budget)',	1993	,	28081
union select 'Social Security Administration (On-Budget)',	1992	,	23986
union select 'Social Security Administration (On-Budget)',	1994	,	32376
union select 'Social Security Administration (On-Budget)',	1995	,	32551
union select 'Social Security Administration (On-Budget)',	1996	,	30349
union select 'Social Security Administration (On-Budget)',	1998	,	36022
union select 'Social Security Administration (On-Budget)',	1999	,	39797
union select 'Social Security Administration (On-Budget)',	2000	,	45112
union select 'Social Security Administration (On-Budget)',	2001	,	43259
union select 'Social Security Administration (On-Budget)',	2002	,	43913
union select 'Social Security Administration (On-Budget)',	2003	,	46157
union select 'Social Security Administration (On-Budget)',	2004	,	49939
union select 'Social Security Administration (On-Budget)',	2005	,	54777
union select 'Social Security Administration (On-Budget)',	2006	,	53360
union select 'Social Security Administration (On-Budget)',	2007	,	56663
union select 'Social Security Administration (On-Budget)',	2008	,	58500
union select 'Social Security Administration (On-Budget)',	2009	,	78406
union select 'Social Security Administration (On-Budget)',	2010	,	70198
union select 'Social Security Administration (On-Budget)',	2011	,	154714
union select 'Social Security Administration (On-Budget)',	2012	,	188759
union select 'Social Security Administration (On-Budget)',	2013	,	109001
union select 'Social Security Administration (On-Budget)',	2014	,	83745
union select 'Social Security Administration (On-Budget)',	2015	,	89340
union select 'Social Security Administration (On-Budget)',	2016	,	94594
union select 'Social Security Administration (On-Budget)',	2017	,	95235
union select 'Social Security Administration (On-Budget)',	2018	,	99064
union select 'Social Security Administration (On-Budget)',	2019	,	108590
union select 'Social Security Administration (On-Budget)',	2020	,	114327
union select 'Social Security Administration (On-Budget)',	2021	,	119927
