function [mua, musPrime, refInd] = DOTHUB_getTissueCoeffs(tissue_label,wavelength)

% ####################### INPUTS ##########################################

% tissue_label  :   A string specifying the requested tissue. Options
%                   include 'scalp','skull','ECT','CSF','GM','WM'

% wavelength    :   in nm.

% ####################### OUTPUTS #########################################

% mua           :   Absorption Coefficient of the requested tissue at the
%                   specified wavelength. Units of mm-1;

% musPrime      :   Reduced scattering coefficient of the requested tissue at the
%                   specified wavelength. Units of mm-1;

% refInd        :   Refractive index of the requested tissue at the
%                   specified wavelength. !!!Currently always 1.3!!!

% ####################### Dependencies ####################################

% #########################################################################
% EVR???, UCL. Adapted by RJC, UCL, April 2020
% Sources of these properties need to be cited!!

[lambda, mua_model, musPrime_model] = propertiesPull();
tissues = {'Scalp'  'Skull'  'CSF'  'GM'  'WM'};

% Find wavelength index;
[~,wavInd] = min(abs(lambda-wavelength));

% Determine requested tissue;
if strcmpi(tissue_label,'ECT')
    mua = mean(mua_model(wavInd,[1 2]),2);
    musPrime = mean(musPrime_model(wavInd,[1 2]),2);
else
    tissInd = find(strcmpi(tissues,tissue_label));
    mua = mua_model(wavInd,tissInd);
    musPrime = musPrime_model(wavInd,tissInd);
end
            
refInd = 1.3;            




%%
function [lambda, mua_model, musPrime_model] = propertiesPull();
lambda = [650
    651
    652
    653
    654
    655
    656
    657
    658
    659
    660
    661
    662
    663
    664
    665
    666
    667
    668
    669
    670
    671
    672
    673
    674
    675
    676
    677
    678
    679
    680
    681
    682
    683
    684
    685
    686
    687
    688
    689
    690
    691
    692
    693
    694
    695
    696
    697
    698
    699
    700
    701
    702
    703
    704
    705
    706
    707
    708
    709
    710
    711
    712
    713
    714
    715
    716
    717
    718
    719
    720
    721
    722
    723
    724
    725
    726
    727
    728
    729
    730
    731
    732
    733
    734
    735
    736
    737
    738
    739
    740
    741
    742
    743
    744
    745
    746
    747
    748
    749
    750
    751
    752
    753
    754
    755
    756
    757
    758
    759
    760
    761
    762
    763
    764
    765
    766
    767
    768
    769
    770
    771
    772
    773
    774
    775
    776
    777
    778
    779
    780
    781
    782
    783
    784
    785
    786
    787
    788
    789
    790
    791
    792
    793
    794
    795
    796
    797
    798
    799
    800
    801
    802
    803
    804
    805
    806
    807
    808
    809
    810
    811
    812
    813
    814
    815
    816
    817
    818
    819
    820
    821
    822
    823
    824
    825
    826
    827
    828
    829
    830
    831
    832
    833
    834
    835
    836
    837
    838
    839
    840
    841
    842
    843
    844
    845
    846
    847
    848
    849
    850
    851
    852
    853
    854
    855
    856
    857
    858
    859
    860
    861
    862
    863
    864
    865
    866
    867
    868
    869
    870
    871
    872
    873
    874
    875
    876
    877
    878
    879
    880
    881
    882
    883
    884
    885
    886
    887
    888
    889
    890
    891
    892
    893
    894
    895
    896
    897
    898
    899
    900
    901
    902
    903
    904
    905
    906
    907
    908
    909
    910
    911
    912
    913
    914
    915
    916
    917
    918
    919
    920
    921
    922
    923
    924
    925
    926
    927
    928
    929
    930
    931
    932
    933
    934
    935
    936
    937
    938
    939
    940
    941
    942
    943
    944
    945
    946
    947
    948
    949
    950];


mua_model = [   0.0149    0.0083    0.0004    0.0168    0.0126
    0.0150    0.0084    0.0004    0.0168    0.0127
    0.0150    0.0084    0.0004    0.0169    0.0127
    0.0150    0.0085    0.0005    0.0169    0.0127
    0.0150    0.0085    0.0005    0.0169    0.0128
    0.0150    0.0086    0.0005    0.0169    0.0128
    0.0151    0.0087    0.0005    0.0169    0.0129
    0.0151    0.0087    0.0005    0.0169    0.0129
    0.0151    0.0088    0.0005    0.0169    0.0129
    0.0151    0.0088    0.0006    0.0169    0.0130
    0.0151    0.0089    0.0006    0.0169    0.0130
    0.0152    0.0090    0.0006    0.0170    0.0131
    0.0152    0.0090    0.0006    0.0170    0.0131
    0.0152    0.0091    0.0006    0.0170    0.0131
    0.0152    0.0091    0.0006    0.0170    0.0132
    0.0152    0.0092    0.0007    0.0170    0.0132
    0.0153    0.0093    0.0007    0.0170    0.0133
    0.0153    0.0093    0.0007    0.0170    0.0133
    0.0153    0.0094    0.0007    0.0170    0.0134
    0.0153    0.0094    0.0007    0.0171    0.0134
    0.0153    0.0095    0.0007    0.0171    0.0134
    0.0154    0.0096    0.0007    0.0171    0.0135
    0.0154    0.0096    0.0008    0.0171    0.0135
    0.0154    0.0097    0.0008    0.0171    0.0136
    0.0154    0.0097    0.0008    0.0171    0.0136
    0.0154    0.0098    0.0008    0.0171    0.0136
    0.0155    0.0098    0.0008    0.0171    0.0137
    0.0155    0.0099    0.0008    0.0172    0.0137
    0.0155    0.0100    0.0009    0.0172    0.0138
    0.0155    0.0100    0.0009    0.0172    0.0138
    0.0156    0.0101    0.0009    0.0172    0.0138
    0.0156    0.0101    0.0009    0.0172    0.0139
    0.0156    0.0102    0.0009    0.0172    0.0139
    0.0156    0.0103    0.0009    0.0172    0.0140
    0.0156    0.0103    0.0009    0.0172    0.0140
    0.0157    0.0104    0.0010    0.0172    0.0141
    0.0157    0.0104    0.0010    0.0173    0.0141
    0.0157    0.0105    0.0010    0.0173    0.0141
    0.0157    0.0106    0.0010    0.0173    0.0142
    0.0157    0.0106    0.0010    0.0173    0.0142
    0.0158    0.0107    0.0010    0.0173    0.0143
    0.0158    0.0107    0.0011    0.0173    0.0143
    0.0158    0.0108    0.0011    0.0173    0.0143
    0.0158    0.0109    0.0011    0.0173    0.0144
    0.0158    0.0109    0.0011    0.0174    0.0144
    0.0159    0.0110    0.0011    0.0174    0.0145
    0.0159    0.0110    0.0011    0.0174    0.0145
    0.0159    0.0111    0.0011    0.0174    0.0145
    0.0159    0.0111    0.0012    0.0174    0.0146
    0.0159    0.0112    0.0012    0.0174    0.0146
    0.0160    0.0113    0.0012    0.0174    0.0147
    0.0160    0.0113    0.0012    0.0174    0.0147
    0.0160    0.0114    0.0012    0.0175    0.0147
    0.0160    0.0114    0.0012    0.0175    0.0148
    0.0160    0.0115    0.0013    0.0175    0.0148
    0.0161    0.0116    0.0013    0.0175    0.0149
    0.0161    0.0116    0.0013    0.0175    0.0149
    0.0161    0.0117    0.0013    0.0175    0.0150
    0.0161    0.0117    0.0013    0.0175    0.0150
    0.0161    0.0118    0.0013    0.0175    0.0150
    0.0162    0.0119    0.0013    0.0175    0.0151
    0.0162    0.0119    0.0014    0.0176    0.0151
    0.0162    0.0120    0.0014    0.0176    0.0152
    0.0162    0.0120    0.0014    0.0176    0.0152
    0.0162    0.0121    0.0014    0.0176    0.0152
    0.0163    0.0122    0.0014    0.0176    0.0153
    0.0163    0.0122    0.0014    0.0176    0.0153
    0.0163    0.0123    0.0015    0.0176    0.0154
    0.0163    0.0123    0.0015    0.0176    0.0154
    0.0163    0.0124    0.0015    0.0177    0.0154
    0.0164    0.0125    0.0015    0.0177    0.0155
    0.0164    0.0125    0.0015    0.0177    0.0155
    0.0164    0.0126    0.0015    0.0177    0.0156
    0.0164    0.0126    0.0016    0.0177    0.0156
    0.0164    0.0127    0.0016    0.0177    0.0157
    0.0165    0.0127    0.0016    0.0177    0.0157
    0.0165    0.0128    0.0016    0.0177    0.0157
    0.0165    0.0129    0.0016    0.0177    0.0158
    0.0165    0.0129    0.0016    0.0178    0.0158
    0.0165    0.0130    0.0016    0.0178    0.0159
    0.0166    0.0130    0.0017    0.0178    0.0159
    0.0166    0.0131    0.0017    0.0178    0.0159
    0.0166    0.0132    0.0017    0.0178    0.0160
    0.0166    0.0132    0.0017    0.0178    0.0160
    0.0166    0.0133    0.0017    0.0178    0.0161
    0.0167    0.0133    0.0017    0.0178    0.0161
    0.0167    0.0134    0.0018    0.0179    0.0161
    0.0167    0.0135    0.0018    0.0179    0.0162
    0.0167    0.0135    0.0018    0.0179    0.0162
    0.0168    0.0136    0.0018    0.0179    0.0163
    0.0168    0.0136    0.0018    0.0179    0.0163
    0.0168    0.0137    0.0018    0.0179    0.0163
    0.0168    0.0138    0.0018    0.0179    0.0164
    0.0168    0.0138    0.0019    0.0179    0.0164
    0.0169    0.0139    0.0019    0.0180    0.0165
    0.0169    0.0139    0.0019    0.0180    0.0165
    0.0169    0.0140    0.0019    0.0180    0.0166
    0.0169    0.0140    0.0019    0.0180    0.0166
    0.0169    0.0141    0.0019    0.0180    0.0166
    0.0170    0.0142    0.0020    0.0180    0.0167
    0.0170    0.0142    0.0020    0.0180    0.0167
    0.0170    0.0143    0.0020    0.0180    0.0168
    0.0170    0.0143    0.0020    0.0180    0.0168
    0.0170    0.0144    0.0020    0.0181    0.0168
    0.0171    0.0145    0.0020    0.0181    0.0169
    0.0171    0.0145    0.0020    0.0181    0.0169
    0.0171    0.0146    0.0021    0.0181    0.0170
    0.0171    0.0146    0.0021    0.0181    0.0170
    0.0171    0.0147    0.0021    0.0181    0.0170
    0.0172    0.0148    0.0021    0.0181    0.0171
    0.0172    0.0148    0.0021    0.0181    0.0171
    0.0172    0.0149    0.0021    0.0182    0.0172
    0.0172    0.0149    0.0022    0.0182    0.0172
    0.0172    0.0150    0.0022    0.0182    0.0173
    0.0173    0.0151    0.0022    0.0182    0.0173
    0.0173    0.0151    0.0022    0.0182    0.0173
    0.0173    0.0152    0.0022    0.0182    0.0174
    0.0173    0.0152    0.0022    0.0182    0.0174
    0.0173    0.0153    0.0022    0.0182    0.0175
    0.0174    0.0153    0.0023    0.0183    0.0175
    0.0174    0.0154    0.0023    0.0183    0.0175
    0.0174    0.0155    0.0023    0.0183    0.0176
    0.0174    0.0155    0.0023    0.0183    0.0176
    0.0174    0.0156    0.0023    0.0183    0.0177
    0.0175    0.0156    0.0023    0.0183    0.0177
    0.0175    0.0157    0.0024    0.0183    0.0177
    0.0175    0.0158    0.0024    0.0183    0.0178
    0.0175    0.0158    0.0024    0.0183    0.0178
    0.0175    0.0159    0.0024    0.0184    0.0179
    0.0176    0.0159    0.0024    0.0184    0.0179
    0.0176    0.0160    0.0024    0.0184    0.0180
    0.0176    0.0161    0.0025    0.0184    0.0180
    0.0176    0.0161    0.0025    0.0184    0.0180
    0.0176    0.0162    0.0025    0.0184    0.0181
    0.0177    0.0162    0.0025    0.0184    0.0181
    0.0177    0.0163    0.0025    0.0184    0.0182
    0.0177    0.0164    0.0025    0.0185    0.0182
    0.0177    0.0164    0.0025    0.0185    0.0182
    0.0177    0.0165    0.0026    0.0185    0.0183
    0.0178    0.0165    0.0026    0.0185    0.0183
    0.0178    0.0166    0.0026    0.0185    0.0184
    0.0178    0.0166    0.0026    0.0185    0.0184
    0.0178    0.0167    0.0026    0.0185    0.0184
    0.0178    0.0168    0.0026    0.0185    0.0185
    0.0179    0.0168    0.0027    0.0185    0.0185
    0.0179    0.0169    0.0027    0.0186    0.0186
    0.0179    0.0169    0.0027    0.0186    0.0186
    0.0179    0.0170    0.0027    0.0186    0.0186
    0.0180    0.0171    0.0027    0.0186    0.0187
    0.0180    0.0171    0.0027    0.0186    0.0187
    0.0180    0.0172    0.0027    0.0186    0.0188
    0.0180    0.0172    0.0028    0.0186    0.0188
    0.0180    0.0173    0.0028    0.0186    0.0189
    0.0181    0.0174    0.0028    0.0187    0.0189
    0.0181    0.0174    0.0028    0.0187    0.0189
    0.0181    0.0175    0.0028    0.0187    0.0190
    0.0181    0.0175    0.0028    0.0187    0.0190
    0.0181    0.0176    0.0029    0.0187    0.0191
    0.0182    0.0177    0.0029    0.0187    0.0191
    0.0182    0.0177    0.0029    0.0187    0.0191
    0.0182    0.0178    0.0029    0.0187    0.0192
    0.0182    0.0178    0.0029    0.0188    0.0192
    0.0182    0.0179    0.0029    0.0188    0.0193
    0.0183    0.0179    0.0029    0.0188    0.0193
    0.0183    0.0180    0.0030    0.0188    0.0193
    0.0183    0.0181    0.0030    0.0188    0.0194
    0.0183    0.0181    0.0030    0.0188    0.0194
    0.0183    0.0182    0.0030    0.0188    0.0195
    0.0184    0.0182    0.0030    0.0188    0.0195
    0.0184    0.0183    0.0030    0.0188    0.0196
    0.0184    0.0184    0.0031    0.0189    0.0196
    0.0184    0.0184    0.0031    0.0189    0.0196
    0.0184    0.0185    0.0031    0.0189    0.0197
    0.0185    0.0185    0.0031    0.0189    0.0197
    0.0185    0.0186    0.0031    0.0189    0.0198
    0.0185    0.0187    0.0031    0.0189    0.0198
    0.0185    0.0187    0.0031    0.0189    0.0198
    0.0185    0.0188    0.0032    0.0189    0.0199
    0.0186    0.0188    0.0032    0.0190    0.0199
    0.0186    0.0189    0.0032    0.0190    0.0200
    0.0186    0.0190    0.0032    0.0190    0.0200
    0.0186    0.0190    0.0032    0.0190    0.0200
    0.0186    0.0191    0.0032    0.0190    0.0201
    0.0187    0.0191    0.0033    0.0190    0.0201
    0.0187    0.0192    0.0033    0.0190    0.0202
    0.0187    0.0192    0.0033    0.0190    0.0202
    0.0187    0.0193    0.0033    0.0191    0.0202
    0.0187    0.0194    0.0033    0.0191    0.0203
    0.0188    0.0194    0.0033    0.0191    0.0203
    0.0188    0.0195    0.0034    0.0191    0.0204
    0.0188    0.0195    0.0034    0.0191    0.0204
    0.0188    0.0196    0.0034    0.0191    0.0205
    0.0188    0.0197    0.0034    0.0191    0.0205
    0.0189    0.0197    0.0034    0.0191    0.0205
    0.0189    0.0198    0.0034    0.0191    0.0206
    0.0189    0.0198    0.0034    0.0192    0.0206
    0.0189    0.0199    0.0035    0.0192    0.0207
    0.0189    0.0200    0.0035    0.0192    0.0207
    0.0190    0.0200    0.0035    0.0192    0.0207
    0.0190    0.0201    0.0035    0.0192    0.0208
    0.0190    0.0201    0.0035    0.0192    0.0208
    0.0190    0.0202    0.0035    0.0192    0.0209
    0.0190    0.0203    0.0036    0.0192    0.0209
    0.0191    0.0203    0.0036    0.0193    0.0209
    0.0191    0.0204    0.0036    0.0193    0.0210
    0.0191    0.0204    0.0036    0.0193    0.0210
    0.0191    0.0205    0.0036    0.0193    0.0211
    0.0192    0.0205    0.0036    0.0193    0.0211
    0.0192    0.0206    0.0036    0.0193    0.0212
    0.0192    0.0207    0.0037    0.0193    0.0212
    0.0192    0.0207    0.0037    0.0193    0.0212
    0.0192    0.0208    0.0037    0.0193    0.0213
    0.0193    0.0208    0.0037    0.0194    0.0213
    0.0193    0.0209    0.0037    0.0194    0.0214
    0.0193    0.0210    0.0037    0.0194    0.0214
    0.0193    0.0210    0.0038    0.0194    0.0214
    0.0193    0.0211    0.0038    0.0194    0.0215
    0.0194    0.0211    0.0038    0.0194    0.0215
    0.0194    0.0212    0.0038    0.0194    0.0216
    0.0194    0.0213    0.0038    0.0194    0.0216
    0.0194    0.0213    0.0038    0.0195    0.0216
    0.0194    0.0214    0.0038    0.0195    0.0217
    0.0195    0.0214    0.0039    0.0195    0.0217
    0.0195    0.0215    0.0039    0.0195    0.0218
    0.0195    0.0216    0.0039    0.0195    0.0218
    0.0195    0.0216    0.0039    0.0195    0.0218
    0.0195    0.0217    0.0039    0.0195    0.0219
    0.0196    0.0217    0.0039    0.0195    0.0219
    0.0196    0.0218    0.0040    0.0196    0.0220
    0.0196    0.0218    0.0040    0.0196    0.0220
    0.0196    0.0219    0.0040    0.0196    0.0221
    0.0196    0.0220    0.0040    0.0196    0.0221
    0.0197    0.0220    0.0040    0.0196    0.0221
    0.0197    0.0221    0.0040    0.0196    0.0222
    0.0197    0.0221    0.0040    0.0196    0.0222
    0.0197    0.0222    0.0041    0.0196    0.0223
    0.0197    0.0223    0.0041    0.0196    0.0223
    0.0198    0.0223    0.0041    0.0197    0.0223
    0.0198    0.0224    0.0041    0.0197    0.0224
    0.0198    0.0224    0.0041    0.0197    0.0224
    0.0198    0.0225    0.0041    0.0197    0.0225
    0.0198    0.0226    0.0042    0.0197    0.0225
    0.0199    0.0226    0.0042    0.0197    0.0225
    0.0199    0.0227    0.0042    0.0197    0.0226
    0.0199    0.0227    0.0042    0.0197    0.0226
    0.0199    0.0228    0.0042    0.0198    0.0227
    0.0199    0.0229    0.0042    0.0198    0.0227
    0.0200    0.0229    0.0043    0.0198    0.0228
    0.0200    0.0230    0.0043    0.0198    0.0228
    0.0200    0.0230    0.0043    0.0198    0.0228
    0.0200    0.0231    0.0043    0.0198    0.0229
    0.0200    0.0231    0.0043    0.0198    0.0229
    0.0201    0.0232    0.0043    0.0198    0.0230
    0.0201    0.0233    0.0043    0.0199    0.0230
    0.0201    0.0233    0.0044    0.0199    0.0230
    0.0201    0.0234    0.0044    0.0199    0.0231
    0.0201    0.0234    0.0044    0.0199    0.0231
    0.0202    0.0235    0.0044    0.0199    0.0232
    0.0202    0.0236    0.0044    0.0199    0.0232
    0.0202    0.0236    0.0044    0.0199    0.0232
    0.0202    0.0237    0.0045    0.0199    0.0233
    0.0202    0.0237    0.0045    0.0199    0.0233
    0.0203    0.0238    0.0045    0.0200    0.0234
    0.0203    0.0239    0.0045    0.0200    0.0234
    0.0203    0.0239    0.0045    0.0200    0.0235
    0.0203    0.0240    0.0045    0.0200    0.0235
    0.0204    0.0240    0.0045    0.0200    0.0235
    0.0204    0.0241    0.0046    0.0200    0.0236
    0.0204    0.0242    0.0046    0.0200    0.0236
    0.0204    0.0242    0.0046    0.0200    0.0237
    0.0204    0.0243    0.0046    0.0201    0.0237
    0.0205    0.0243    0.0046    0.0201    0.0237
    0.0205    0.0244    0.0046    0.0201    0.0238
    0.0205    0.0244    0.0047    0.0201    0.0238
    0.0205    0.0245    0.0047    0.0201    0.0239
    0.0205    0.0246    0.0047    0.0201    0.0239
    0.0206    0.0246    0.0047    0.0201    0.0239
    0.0206    0.0247    0.0047    0.0201    0.0240
    0.0206    0.0247    0.0047    0.0201    0.0240
    0.0206    0.0248    0.0047    0.0202    0.0241
    0.0206    0.0249    0.0048    0.0202    0.0241
    0.0207    0.0249    0.0048    0.0202    0.0241
    0.0207    0.0250    0.0048    0.0202    0.0242
    0.0207    0.0250    0.0048    0.0202    0.0242
    0.0207    0.0251    0.0048    0.0202    0.0243
    0.0207    0.0252    0.0048    0.0202    0.0243
    0.0208    0.0252    0.0049    0.0202    0.0244
    0.0208    0.0253    0.0049    0.0203    0.0244
    0.0208    0.0253    0.0049    0.0203    0.0244
    0.0208    0.0254    0.0049    0.0203    0.0245
    0.0208    0.0255    0.0049    0.0203    0.0245
    0.0209    0.0255    0.0049    0.0203    0.0246
    0.0209    0.0256    0.0049    0.0203    0.0246
    0.0209    0.0256    0.0050    0.0203    0.0246
    0.0209    0.0257    0.0050    0.0203    0.0247
    0.0209    0.0257    0.0050    0.0204    0.0247
    0.0210    0.0258    0.0050    0.0204    0.0248
    0.0210    0.0259    0.0050    0.0204    0.0248
    0.0210    0.0259    0.0050    0.0204    0.0248
    0.0210    0.0260    0.0051    0.0204    0.0249
    0.0210    0.0260    0.0051    0.0204    0.0249];

musPrime_model = [   0.8400    1.0964    0.0042    0.9992    1.3709
    0.8390    1.0952    0.0050    0.9976    1.3691
    0.8380    1.0941    0.0058    0.9959    1.3673
    0.8370    1.0929    0.0066    0.9943    1.3655
    0.8360    1.0917    0.0075    0.9927    1.3637
    0.8350    1.0905    0.0083    0.9910    1.3619
    0.8340    1.0893    0.0091    0.9894    1.3601
    0.8330    1.0882    0.0099    0.9878    1.3583
    0.8320    1.0870    0.0107    0.9861    1.3565
    0.8310    1.0858    0.0115    0.9845    1.3547
    0.8300    1.0846    0.0123    0.9829    1.3529
    0.8290    1.0835    0.0131    0.9812    1.3511
    0.8280    1.0823    0.0139    0.9796    1.3493
    0.8270    1.0811    0.0147    0.9780    1.3475
    0.8260    1.0799    0.0155    0.9763    1.3457
    0.8250    1.0788    0.0164    0.9747    1.3439
    0.8240    1.0776    0.0172    0.9731    1.3421
    0.8230    1.0764    0.0180    0.9714    1.3403
    0.8220    1.0752    0.0188    0.9698    1.3385
    0.8210    1.0740    0.0196    0.9682    1.3367
    0.8200    1.0729    0.0204    0.9665    1.3349
    0.8190    1.0717    0.0212    0.9649    1.3331
    0.8180    1.0705    0.0220    0.9633    1.3313
    0.8170    1.0693    0.0228    0.9616    1.3295
    0.8160    1.0682    0.0236    0.9600    1.3277
    0.8150    1.0670    0.0244    0.9584    1.3259
    0.8140    1.0658    0.0253    0.9567    1.3241
    0.8130    1.0646    0.0261    0.9551    1.3223
    0.8120    1.0634    0.0269    0.9535    1.3205
    0.8110    1.0623    0.0277    0.9518    1.3187
    0.8100    1.0611    0.0285    0.9502    1.3169
    0.8090    1.0599    0.0293    0.9486    1.3151
    0.8080    1.0587    0.0301    0.9469    1.3133
    0.8070    1.0576    0.0309    0.9453    1.3115
    0.8060    1.0564    0.0317    0.9437    1.3097
    0.8050    1.0552    0.0325    0.9420    1.3079
    0.8040    1.0540    0.0333    0.9404    1.3061
    0.8030    1.0528    0.0341    0.9388    1.3043
    0.8020    1.0517    0.0350    0.9371    1.3025
    0.8010    1.0505    0.0358    0.9355    1.3006
    0.8000    1.0493    0.0366    0.9339    1.2988
    0.7990    1.0481    0.0374    0.9322    1.2970
    0.7980    1.0470    0.0382    0.9306    1.2952
    0.7970    1.0458    0.0390    0.9290    1.2934
    0.7960    1.0446    0.0398    0.9273    1.2916
    0.7950    1.0434    0.0406    0.9257    1.2898
    0.7940    1.0423    0.0414    0.9241    1.2880
    0.7930    1.0411    0.0422    0.9225    1.2862
    0.7920    1.0399    0.0430    0.9208    1.2844
    0.7910    1.0387    0.0439    0.9192    1.2826
    0.7900    1.0375    0.0447    0.9176    1.2808
    0.7890    1.0364    0.0455    0.9159    1.2790
    0.7880    1.0352    0.0463    0.9143    1.2772
    0.7870    1.0340    0.0471    0.9127    1.2754
    0.7860    1.0328    0.0479    0.9110    1.2736
    0.7850    1.0317    0.0487    0.9094    1.2718
    0.7840    1.0305    0.0495    0.9078    1.2700
    0.7830    1.0293    0.0503    0.9061    1.2682
    0.7820    1.0281    0.0511    0.9045    1.2664
    0.7810    1.0269    0.0519    0.9029    1.2646
    0.7800    1.0258    0.0527    0.9012    1.2628
    0.7790    1.0246    0.0536    0.8996    1.2610
    0.7780    1.0234    0.0544    0.8980    1.2592
    0.7770    1.0222    0.0552    0.8963    1.2574
    0.7760    1.0211    0.0560    0.8947    1.2556
    0.7750    1.0199    0.0568    0.8931    1.2538
    0.7740    1.0187    0.0576    0.8914    1.2520
    0.7730    1.0175    0.0584    0.8898    1.2502
    0.7720    1.0163    0.0592    0.8882    1.2484
    0.7710    1.0152    0.0600    0.8865    1.2466
    0.7700    1.0140    0.0608    0.8849    1.2448
    0.7690    1.0128    0.0616    0.8833    1.2430
    0.7680    1.0116    0.0625    0.8816    1.2412
    0.7670    1.0105    0.0633    0.8800    1.2394
    0.7660    1.0093    0.0641    0.8784    1.2376
    0.7650    1.0081    0.0649    0.8767    1.2358
    0.7640    1.0069    0.0657    0.8751    1.2340
    0.7630    1.0057    0.0665    0.8735    1.2322
    0.7620    1.0046    0.0673    0.8718    1.2304
    0.7610    1.0034    0.0681    0.8702    1.2286
    0.7600    1.0022    0.0689    0.8686    1.2268
    0.7590    1.0010    0.0697    0.8669    1.2250
    0.7580    0.9999    0.0705    0.8653    1.2232
    0.7570    0.9987    0.0714    0.8637    1.2214
    0.7560    0.9975    0.0722    0.8620    1.2196
    0.7550    0.9963    0.0730    0.8604    1.2178
    0.7540    0.9952    0.0738    0.8588    1.2160
    0.7530    0.9940    0.0746    0.8571    1.2142
    0.7520    0.9928    0.0754    0.8555    1.2124
    0.7510    0.9916    0.0762    0.8539    1.2106
    0.7500    0.9904    0.0770    0.8522    1.2088
    0.7490    0.9893    0.0778    0.8506    1.2070
    0.7480    0.9881    0.0786    0.8490    1.2052
    0.7470    0.9869    0.0794    0.8473    1.2034
    0.7460    0.9857    0.0802    0.8457    1.2016
    0.7450    0.9846    0.0811    0.8441    1.1998
    0.7440    0.9834    0.0819    0.8424    1.1980
    0.7430    0.9822    0.0827    0.8408    1.1962
    0.7420    0.9810    0.0835    0.8392    1.1944
    0.7410    0.9798    0.0843    0.8375    1.1926
    0.7400    0.9787    0.0851    0.8359    1.1908
    0.7390    0.9775    0.0859    0.8343    1.1890
    0.7380    0.9763    0.0867    0.8326    1.1872
    0.7370    0.9751    0.0875    0.8310    1.1854
    0.7360    0.9740    0.0883    0.8294    1.1836
    0.7350    0.9728    0.0891    0.8277    1.1818
    0.7340    0.9716    0.0900    0.8261    1.1800
    0.7330    0.9704    0.0908    0.8245    1.1782
    0.7320    0.9692    0.0916    0.8228    1.1764
    0.7310    0.9681    0.0924    0.8212    1.1746
    0.7300    0.9669    0.0932    0.8196    1.1728
    0.7290    0.9657    0.0940    0.8179    1.1710
    0.7280    0.9645    0.0948    0.8163    1.1692
    0.7270    0.9634    0.0956    0.8147    1.1674
    0.7260    0.9622    0.0964    0.8130    1.1656
    0.7250    0.9610    0.0972    0.8114    1.1638
    0.7240    0.9598    0.0980    0.8098    1.1620
    0.7230    0.9587    0.0988    0.8081    1.1602
    0.7220    0.9575    0.0997    0.8065    1.1584
    0.7210    0.9563    0.1005    0.8049    1.1566
    0.7200    0.9551    0.1013    0.8032    1.1548
    0.7190    0.9539    0.1021    0.8016    1.1530
    0.7180    0.9528    0.1029    0.8000    1.1512
    0.7170    0.9516    0.1037    0.7983    1.1494
    0.7160    0.9504    0.1045    0.7967    1.1476
    0.7150    0.9492    0.1053    0.7951    1.1458
    0.7140    0.9481    0.1061    0.7934    1.1440
    0.7130    0.9469    0.1069    0.7918    1.1422
    0.7120    0.9457    0.1077    0.7902    1.1404
    0.7110    0.9445    0.1086    0.7885    1.1386
    0.7100    0.9433    0.1094    0.7869    1.1368
    0.7090    0.9422    0.1102    0.7853    1.1350
    0.7080    0.9410    0.1110    0.7836    1.1332
    0.7070    0.9398    0.1118    0.7820    1.1314
    0.7060    0.9386    0.1126    0.7804    1.1296
    0.7050    0.9375    0.1134    0.7787    1.1278
    0.7040    0.9363    0.1142    0.7771    1.1260
    0.7030    0.9351    0.1150    0.7755    1.1242
    0.7020    0.9339    0.1158    0.7738    1.1224
    0.7010    0.9327    0.1166    0.7722    1.1206
    0.7000    0.9316    0.1175    0.7706    1.1188
    0.6990    0.9304    0.1183    0.7689    1.1170
    0.6980    0.9292    0.1191    0.7673    1.1152
    0.6970    0.9280    0.1199    0.7657    1.1134
    0.6960    0.9269    0.1207    0.7640    1.1116
    0.6950    0.9257    0.1215    0.7624    1.1098
    0.6940    0.9245    0.1223    0.7608    1.1080
    0.6930    0.9233    0.1231    0.7591    1.1062
    0.6920    0.9222    0.1239    0.7575    1.1044
    0.6910    0.9210    0.1247    0.7559    1.1026
    0.6900    0.9198    0.1255    0.7542    1.1008
    0.6890    0.9186    0.1263    0.7526    1.0990
    0.6880    0.9174    0.1272    0.7510    1.0972
    0.6870    0.9163    0.1280    0.7493    1.0954
    0.6860    0.9151    0.1288    0.7477    1.0936
    0.6850    0.9139    0.1296    0.7461    1.0917
    0.6840    0.9127    0.1304    0.7444    1.0899
    0.6830    0.9116    0.1312    0.7428    1.0881
    0.6820    0.9104    0.1320    0.7412    1.0863
    0.6810    0.9092    0.1328    0.7395    1.0845
    0.6800    0.9080    0.1336    0.7379    1.0827
    0.6790    0.9068    0.1344    0.7363    1.0809
    0.6780    0.9057    0.1352    0.7346    1.0791
    0.6770    0.9045    0.1361    0.7330    1.0773
    0.6760    0.9033    0.1369    0.7314    1.0755
    0.6750    0.9021    0.1377    0.7297    1.0737
    0.6740    0.9010    0.1385    0.7281    1.0719
    0.6730    0.8998    0.1393    0.7265    1.0701
    0.6720    0.8986    0.1401    0.7249    1.0683
    0.6710    0.8974    0.1409    0.7232    1.0665
    0.6700    0.8962    0.1417    0.7216    1.0647
    0.6690    0.8951    0.1425    0.7200    1.0629
    0.6680    0.8939    0.1433    0.7183    1.0611
    0.6670    0.8927    0.1441    0.7167    1.0593
    0.6660    0.8915    0.1449    0.7151    1.0575
    0.6650    0.8904    0.1458    0.7134    1.0557
    0.6640    0.8892    0.1466    0.7118    1.0539
    0.6630    0.8880    0.1474    0.7102    1.0521
    0.6620    0.8868    0.1482    0.7085    1.0503
    0.6610    0.8857    0.1490    0.7069    1.0485
    0.6600    0.8845    0.1498    0.7053    1.0467
    0.6590    0.8833    0.1506    0.7036    1.0449
    0.6580    0.8821    0.1514    0.7020    1.0431
    0.6570    0.8809    0.1522    0.7004    1.0413
    0.6560    0.8798    0.1530    0.6987    1.0395
    0.6550    0.8786    0.1538    0.6971    1.0377
    0.6540    0.8774    0.1547    0.6955    1.0359
    0.6530    0.8762    0.1555    0.6938    1.0341
    0.6520    0.8751    0.1563    0.6922    1.0323
    0.6510    0.8739    0.1571    0.6906    1.0305
    0.6500    0.8727    0.1579    0.6889    1.0287
    0.6490    0.8715    0.1587    0.6873    1.0269
    0.6480    0.8703    0.1595    0.6857    1.0251
    0.6470    0.8692    0.1603    0.6840    1.0233
    0.6460    0.8680    0.1611    0.6824    1.0215
    0.6450    0.8668    0.1619    0.6808    1.0197
    0.6440    0.8656    0.1627    0.6791    1.0179
    0.6430    0.8645    0.1635    0.6775    1.0161
    0.6420    0.8633    0.1644    0.6759    1.0143
    0.6410    0.8621    0.1652    0.6742    1.0125
    0.6400    0.8609    0.1660    0.6726    1.0107
    0.6390    0.8597    0.1668    0.6710    1.0089
    0.6380    0.8586    0.1676    0.6693    1.0071
    0.6370    0.8574    0.1684    0.6677    1.0053
    0.6360    0.8562    0.1692    0.6661    1.0035
    0.6350    0.8550    0.1700    0.6644    1.0017
    0.6340    0.8539    0.1708    0.6628    0.9999
    0.6330    0.8527    0.1716    0.6612    0.9981
    0.6320    0.8515    0.1724    0.6595    0.9963
    0.6310    0.8503    0.1733    0.6579    0.9945
    0.6300    0.8492    0.1741    0.6563    0.9927
    0.6290    0.8480    0.1749    0.6546    0.9909
    0.6280    0.8468    0.1757    0.6530    0.9891
    0.6270    0.8456    0.1765    0.6514    0.9873
    0.6260    0.8444    0.1773    0.6497    0.9855
    0.6250    0.8433    0.1781    0.6481    0.9837
    0.6240    0.8421    0.1789    0.6465    0.9819
    0.6230    0.8409    0.1797    0.6448    0.9801
    0.6220    0.8397    0.1805    0.6432    0.9783
    0.6210    0.8386    0.1813    0.6416    0.9765
    0.6200    0.8374    0.1822    0.6399    0.9747
    0.6190    0.8362    0.1830    0.6383    0.9729
    0.6180    0.8350    0.1838    0.6367    0.9711
    0.6170    0.8338    0.1846    0.6350    0.9693
    0.6160    0.8327    0.1854    0.6334    0.9675
    0.6150    0.8315    0.1862    0.6318    0.9657
    0.6140    0.8303    0.1870    0.6301    0.9639
    0.6130    0.8291    0.1878    0.6285    0.9621
    0.6120    0.8280    0.1886    0.6269    0.9603
    0.6110    0.8268    0.1894    0.6252    0.9585
    0.6100    0.8256    0.1902    0.6236    0.9567
    0.6090    0.8244    0.1910    0.6220    0.9549
    0.6080    0.8232    0.1919    0.6203    0.9531
    0.6070    0.8221    0.1927    0.6187    0.9513
    0.6060    0.8209    0.1935    0.6171    0.9495
    0.6050    0.8197    0.1943    0.6154    0.9477
    0.6040    0.8185    0.1951    0.6138    0.9459
    0.6030    0.8174    0.1959    0.6122    0.9441
    0.6020    0.8162    0.1967    0.6105    0.9423
    0.6010    0.8150    0.1975    0.6089    0.9405
    0.6000    0.8138    0.1983    0.6073    0.9387
    0.5990    0.8127    0.1991    0.6056    0.9369
    0.5980    0.8115    0.1999    0.6040    0.9351
    0.5970    0.8103    0.2008    0.6024    0.9333
    0.5960    0.8091    0.2016    0.6007    0.9315
    0.5950    0.8079    0.2024    0.5991    0.9297
    0.5940    0.8068    0.2032    0.5975    0.9279
    0.5930    0.8056    0.2040    0.5958    0.9261
    0.5920    0.8044    0.2048    0.5942    0.9243
    0.5910    0.8032    0.2056    0.5926    0.9225
    0.5900    0.8021    0.2064    0.5909    0.9207
    0.5890    0.8009    0.2072    0.5893    0.9189
    0.5880    0.7997    0.2080    0.5877    0.9171
    0.5870    0.7985    0.2088    0.5860    0.9153
    0.5860    0.7973    0.2096    0.5844    0.9135
    0.5850    0.7962    0.2105    0.5828    0.9117
    0.5840    0.7950    0.2113    0.5811    0.9099
    0.5830    0.7938    0.2121    0.5795    0.9081
    0.5820    0.7926    0.2129    0.5779    0.9063
    0.5810    0.7915    0.2137    0.5762    0.9045
    0.5800    0.7903    0.2145    0.5746    0.9027
    0.5790    0.7891    0.2153    0.5730    0.9009
    0.5780    0.7879    0.2161    0.5713    0.8991
    0.5770    0.7867    0.2169    0.5697    0.8973
    0.5760    0.7856    0.2177    0.5681    0.8955
    0.5750    0.7844    0.2185    0.5664    0.8937
    0.5740    0.7832    0.2194    0.5648    0.8919
    0.5730    0.7820    0.2202    0.5632    0.8901
    0.5720    0.7809    0.2210    0.5615    0.8883
    0.5710    0.7797    0.2218    0.5599    0.8865
    0.5700    0.7785    0.2226    0.5583    0.8846
    0.5690    0.7773    0.2234    0.5566    0.8828
    0.5680    0.7762    0.2242    0.5550    0.8810
    0.5670    0.7750    0.2250    0.5534    0.8792
    0.5660    0.7738    0.2258    0.5517    0.8774
    0.5650    0.7726    0.2266    0.5501    0.8756
    0.5640    0.7714    0.2274    0.5485    0.8738
    0.5630    0.7703    0.2283    0.5468    0.8720
    0.5620    0.7691    0.2291    0.5452    0.8702
    0.5610    0.7679    0.2299    0.5436    0.8684
    0.5600    0.7667    0.2307    0.5419    0.8666
    0.5590    0.7656    0.2315    0.5403    0.8648
    0.5580    0.7644    0.2323    0.5387    0.8630
    0.5570    0.7632    0.2331    0.5370    0.8612
    0.5560    0.7620    0.2339    0.5354    0.8594
    0.5550    0.7608    0.2347    0.5338    0.8576
    0.5540    0.7597    0.2355    0.5322    0.8558
    0.5530    0.7585    0.2363    0.5305    0.8540
    0.5520    0.7573    0.2371    0.5289    0.8522
    0.5510    0.7561    0.2380    0.5273    0.8504
    0.5500    0.7550    0.2388    0.5256    0.8486
    0.5490    0.7538    0.2396    0.5240    0.8468
    0.5480    0.7526    0.2404    0.5224    0.8450
    0.5470    0.7514    0.2412    0.5207    0.8432
    0.5460    0.7502    0.2420    0.5191    0.8414
    0.5450    0.7491    0.2428    0.5175    0.8396
    0.5440    0.7479    0.2436    0.5158    0.8378
    0.5430    0.7467    0.2444    0.5142    0.8360
    0.5420    0.7455    0.2452    0.5126    0.8342
    0.5410    0.7444    0.2460    0.5109    0.8324
    0.5400    0.7432    0.2469    0.5093    0.8306];

