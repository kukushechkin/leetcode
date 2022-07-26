import XCTest
@testable import _73

final class _73Tests: XCTestCase {
    let solution = Solution()
    func testExample() {
        XCTAssertEqual(solution.lenLongestFibSubseq([1,2,3,4,5,6,7,8]), 5)
        XCTAssertEqual(solution.lenLongestFibSubseq([1,3,7,11,12,14,18]), 3)
        XCTAssertEqual(solution.lenLongestFibSubseq([1,3,5,11]), 0)
        XCTAssertEqual(solution.lenLongestFibSubseq([2,4,7,8,9,10,14,15,18,23,32,50]), 5)
    }

    func testLong() {
        let arr = [2,7,18,24,28,29,35,37,39,41,46,61,62,63,64,65,66,69,70,73,76,80,89,95,98,108,110,115,127,138,139,154,161,165,174,188,191,193,200,212,225,235,243,259,284,296,306,320,338,351,352,397,400,420,458,484,497,513,538,563,577,635,640,679,742,780,803,833,876,914,929,1035,1037,1099,1200,1264,1300,1346,1414,1477,1506,1670,1677,1778,2044,2103,2179,2290,2391,2435,2705,2714,2877,3308,3403,3525,3868,3941,4375,5352,5506,5704,6259,6376,7080,8660,8909,9229,10127,10317,11455,14012,14933,16386,16693,18535,24162,26513,27010,29990,39095,42899,43703,48525,63257,69412,70713,78515,102352,112311,114416,127040,181723,185129,205555,294034,299545,430932,484674,836651,1796113,3836875,3887187,4675553,4858198,5811143,6749089,7302544,10469747,10772168,11006074,12942544,18508014,21687154,22016678,23888150,24607786,27980812,28422998,29780297,31587569,31921666,32316749,33009733,34077824,37511311,37676327,39003713,39160207,39510092,41550889,41986985,42290523,42867712,43248318,47737616,47834440,47959450,50336880,51248404,53491634,55467278,56114667,57513110,57664777,58129316,58899692,59062090,59552029,59694111,60353811,60545836,61301275,63954892,68584738,69259918,69285022,69344241,71152240,74098724,76411915,76416026,77035053,77770045,78678845,80769170,81670201,82006083,82214531,82394854,84104317,84112191,84451880,84974585,86523044,86630274,87599215,88518963,89045213,89437750,90668712,97799174,98128640,99098274,100922924,101445353,102619815,103437375,103707943,105721632,106603190,108902522,110539544,110588909,116798355,117920706,119433937,122215975,123471080,123683137,124693455,126031981,128116071,129492553,131348981,131574066,132442694,133993068,134296634,135432136,135724345,136609634,137473488,139245506,140232346,141348194,143692714,143816212,145716710,149098531,150462180,153477858,154728969,155834310,156385361,161060924,162662999,163798846,164112327,164976848,165874940,168333425,171984821,172045511,173266108,173540070,175066992,175624919,177418779,177977800,178084583,178253772,178418784,179786806,180726615,181822976,185100534,185162596,186876756,188420050,189847548,189986701,190204713,190984760,191272173,194897487,195700071,197631723,199542370,199758151,199965480,203058918,203223831,203349476,203943874,204180719,205688647,207349602,209111761,211436526,212639866,217100177,217159345,217552225,217624299,217768338,217916113,218065474,221285366,223440528,223535640,227025734,227991393,228531602,231429525,232311313,234447650,236139975,236977463,237252040,238856573,239351597,239582636,240421002,240654324,242661412,247389671,247610215,248303615,248669410,249198504,249469382,249713833,249930142,252519615,254077497,255900387,256743560,257106132,257266675,258763760,260317608,264183352,264947188,266383153,267605885,269952351,270386299,270651562,272131611,272770239,274075704,275837377,276711595,277770207,278570937,279526071,279917683,282319433,284401894,287566138,291659176,292598842,293759345,294063229,294418467,294847791,295486702,295676456,295913495,300390620,300605523,302269777,303063299,303276465,304241969,304927605,305808960,305821586,306345183,306366675,306435047,307170367,308496649,310261137,311346386,311375667,311942583,312015783,312312306,312501642,312863000,313740729,316896912,317296615,321264554,323180205,324147539,325323936,326341654,326623973,329789721,330090782,330923236,331495179,332637740,333927193,334302127,334781822,338486994,338685400,339900709,340222418,341772539,343124535,343690378,343930742,345547385,345972014,347126920,348016792,349653838,354140319,354736197,356276010,356615670,357047492,358597934,360109430,361733321,363661769,365067788,365232454,368571668,369691881,373509044,376754014,376766368,377316556,378418012,380328270,380655047,381245900,382852958,385066448,386329544,389359230,390286410,390331160,390505190,391090104,392532518,392577361,394942639,397511566,398620397,400070138,401090743,402535107,404225701,404981673,405861536,406136996,407654832,411474499,412391258,413844569,414882788,415400061,418382301,418430062,419988052,422572347,423668045,425435064,425694706,426099754,428590922,429295518,429518817,430079632,431108959,431550984,431664336,432822207,434000077,434364881,436839869,438755647,438959373,439423918,440474787,445627555,445665171,447324212,448148456,448888214,449352963,449964563,450412138,452086211,452176411,454490238,455257451,456007854,457590944,457707116,458001843,458311122,458675729,458777776,459315968,460247048,462790448,464401695,465028888,465412846,465661738,467657557,469570130,471991797,473069618,474940574,475045187,475273360,476061574,476750372,476971760,479242734,482077527,485219506,485627214,487325363,487755496,487929338,489481759,490870422,492782303,493244408,493777718,494546641,495702918,497751912,497819383,497951886,500106699,500426391,500715797,508045119,508114545,508246461,508592320,509073413,509463866,510257349,511552251,512251349,512253501,512942473,517448815,518244161,518546880,519145902,520380219,523192062,524623580,525517738,528635096,531121523,531625842,534526877,534967540,535683907,535818623,537349861,540811300,541781157,542132271,542938423,543338991,543451137,544595037,545809827,546309411,546385683,546728980,546876336,548130967,550237090,551708785,552377946,557459829,560036633,561488792,561650489,562217221,563943323,565505525,566419295,566736650,569721629,570099462,570507592,571433443,572836012,574145276,574180106,574877796,575254109,576576477,577943708,581281781,583810310,584388887,584808967,585949231,586112331,586390001,588093585,588485219,589426716,591142864,592343393,595195193,595811562,597640632,600358761,600923430,600954789,600983888,601555169,601705027,605450793,606737573,607256793,607506507,611393051,611794955,612685184,615473425,616412796,617842758,618107667,618310098,618836086,618910379,622063782,622709740,623280770,624076998,624347828,626946502,627013663,628228533,629021588,629205441,631169840,632152136,633322621,635392407,636150692,636609236,637045500,638738934,639928459,640403932,643399268,643934986,644374172,645805142,646777945,648651050,648821476,649499059,650375417,651191070,656868915,657018201,658925928,659616223,660855024,661793452,662301390,663311934,663904456,664161615,666174729,666726240,667453808,669745953,669873326,670427718,671637499,671682343,671970996,673053344,673411956,673891660,674939597,675224289,677711544,678208275,678581280,681285470,682223262,682289718,682733526,682771440,682882708,685698151,687920217,690512651,690913654,691979421,693161400,693316887,693828794,694339759,694710337,696336459,698536600,699388528,700396298,700989149,701346307,701500815,703660271,706022425,706079463,706838122,707519555,709904467,710043115,710796981,710805801,710819084,711703313,713104910,714045425,715725170,716034094,717937383,725538026,727699938,729349389,730038464,730597681,731474606,733457061,733618287,733727623,735486241,735677880,736375272,738249211,739879097,742638919,743246333,743288751,743465926,744232219,744513909,746401982,747557563,749371892,750382271,753350382,754344962,754936412,755706242,758462338,759743964,760251921,760991430,761335392,761831915,762782174,765148637,765299652,765613891,767611054,767727100,768039985,769438702,769554357,770293176,770660124,771334549,774819868,775008358,775614532,777662631,777985492,779526798,780970429,781522348,782783471,783710999,785128904,785142742,787902161,789882848,791954930,794160785,794606058,796381912,796827057,797055274,798204730,801273830,801842519,802030993,802166896,802595780,802749401,803310793,803801955,803907394,805904060,806191182,806699419,807888617,809819127,810464464,810604373,811839967,812956732,813134165,813312629,813619264,815205513,816465302,817813247,823556910,823989775,825065076,826640331,828056374,828229055,828422834,829851956,830470937,830523726,833309918,833839079,841058751,843229535,843630496,844115387,844174378,845729379,845813788,851587776,851611986,854217372,856339869,857899528,859814396,860368390,861032428,862591407,863296559,866474401,866997945,868899970,869791445,870935854,874077296,874556317,874875906,876375768,878030262,878158440,878414383,880681823,880751761,883210516,883746865,886614663,888443633,888775681,889914610,890360645,890876961,891131783,896373598,902339148,905045747,906640898,909097034,909305434,911624338,912671875,913283129,914083732,914482346,915316169,917505783,917891041,917915367,918779180,920198369,920226285,921528730,923377344,924748393,926174899,926384821,926434384,926867013,926897792,926953814,927131973,927147393,928796607,929769768,931909690,934429766,934632049,938455891,938508790,939135653,939789630,941471750,943430792,944446473,944461970,946253353,949549365,952707074,953493268,953513531,953624993,953740720,955676783,957278375,957333932,958018823,959243567,961165192,961228220,962045885,962642373,962682008,962884631,964036412,965777628,967289037,967721796,969144798,969512847,970163609,970768798,971397405,972528548,975354970,975497076,975610844,976140051,977163375,977944811,980332185,980422456,982045057,983165417,983345198,984341924,985312563,986139637,986276851,987855282,988012983,988537997,991995145,992560056,992727292,992907238,992958616,993838012,994380363,996227604,997621687,998171154,999041491]

        XCTAssertEqual(solution.lenLongestFibSubseq(arr), 20)
    }
}
