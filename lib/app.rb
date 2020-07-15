require 'twitter'
require 'dotenv' # Appelle la gem Dotenv
Dotenv.load('.env')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte
#client.update('Mon premier tweet en Ruby !!!!')
# client.home_timeline
#p client.status(1283302286421143552)
#puts client.status(1283244171424407553)

# p client.search("#ruby -rt", lang: "ja").first.text
# puts client.search("#ruby -rt", lang: "ja").first.text

#puts client.search("#ruby -rt", lang: "es").first.text

# puts client.user("binance")
# puts client.user(877807935493033984)

#puts location.user

#client.follow("Dashpay")

# client.search("to:#bonjour_monde", result_type: "recent").take(10).collect do |tweet|
#   puts "#{tweet.user.screen_name}: #{tweet.text}"
# end





# #1_It says '#bonjour_monde' => Already done 
  #journalists = ["@jcunniet", "@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain"]


  # def random_data(array, nb, client)
  #   final_array = []
  #   while final_array.length < nb
  #     (0..nb).each do |x|
  #       name = array.sample
  #       final_array.push(name)
  #       client.update("@#{name} #bonjour_monde Nice channel!! Very good info!")
  #     end
  #   end
  #   final_array
  # end

  # p random_data(journalists, 4, client) 
    # envoye to: ["@LelloucheNico", "@cath_robin", "@JuliaPascualita", "@SophiFay", "@AurelieLebelle"]



#2_It likes '#bonjour_monde'
  #client.search("#bonjour_monde").take(25).collect do |tweet|
    #p "#{tweet.user.screen_name}: #{tweet.text}"
    #client.favorite(*tweet)
  #end

  # Resultat:
  
  # "DamienB69511216: #bonjour_monde , bonjour  @the_hacking_pro et bonjour @technomedia, passez une agréable journee !"
  # "DamienB69511216: #bonjour_monde , bonjour  @the_hacking_pro et bonjour @MarjolaineKoch, passez une agréable journee !"
  # "DamienB69511216: #bonjour_monde , bonjour  @the_hacking_pro et bonjour @JustineWeyl, passez une agréable journee !"
  # "Snowballe_: RT @JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @cath_robin , et longue vie à @the_hacking_pro"
  # "Snowballe_: RT @JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @LouiseMalnoy , et longue vie à @the_hacking_pro"
  # "Snowballe_: RT @JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @elcoco01 , et longue vie à @the_hacking_pro"
  # "Snowballe_: RT @JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @sgraveleau , et longue vie à @the_hacking_pro"
  # "Snowballe_: RT @JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @RocheSabine , et longue vie à @the_hacking_pro"
  # "JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @cath_robin , et longue vie à @the_hacking_pro"
  # "JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @LouiseMalnoy , et longue vie à @the_hacking_pro"
  # "JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @elcoco01 , et longue vie à @the_hacking_pro"
  # "JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @sgraveleau , et longue vie à @the_hacking_pro"
  # "JulienLamalle_: #bonjour_monde , Merci pour le travail que tu fais @RocheSabine , et longue vie à @the_hacking_pro"
  # "Snowballe_: RT @MathieuVoland: Hello @NolwennCosson, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "Snowballe_: RT @MathieuVoland: Hello @benjaminferran, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "Snowballe_: RT @MathieuVoland: Hello @julie_dlb, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "Snowballe_: RT @MathieuVoland: Hello @pierrehaski, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "Snowballe_: RT @MathieuVoland: Hello @curieusedetout, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "Snowballe_: RT @BenoitRubyThp: #bonjour_monde , Merci pour le travail que tu fais @JohanGarciajg , et vive @the_hacking_pro"
  # "MathieuVoland: Hello @NolwennCosson, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "MathieuVoland: Hello @benjaminferran, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "MathieuVoland: Hello @julie_dlb, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "MathieuVoland: Hello @pierrehaski, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "MathieuVoland: Hello @curieusedetout, thank you for your work and #bonjour_monde. I'm a bot from @The_Hacking_Pro"
  # "BenoitRubyThp: #bonjour_monde , Merci pour le travail que tu fais @JohanGarciajg , et vive @the_hacking_pro"

  
#3_It follows '#bonjour_monde'
  # client.search("#bonjour_monde").take(25).collect do |tweet|
  #   p "#{tweet.user.screen_name}: #{tweet.text}"
  #   client.follow(tweet.user.screen_name)
  # end

#4_It likes and follow on live '#bonjour_monde'
    #Code in stream.rb file

