import 'package:dogbreedapp/dog.dart';
import 'package:flutter/material.dart';

class DogInfo extends StatefulWidget {
  const DogInfo({ Key? key, required this.dog }) : super(key: key);
  final Dog dog; 
  @override
  State<DogInfo> createState() => _DogInfoState();
}

class _DogInfoState extends State<DogInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                color: Colors.grey,
                child: Center(child: Column(
                  children: [
                    Text("This is " + widget.dog.name + ", " + "a " + widget.dog.breed + "."),
                    Text("Here is its description: " + widget.dog.description),
                  ],
                )),
                width: double.maxFinite,
                padding: EdgeInsets.only(top:5, bottom: 10),
              )

            ),
            pinned: true,
            backgroundColor: Colors.purple,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                widget.dog.imageURL,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),        
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Reguli reiciendam;
               Nos autem non solum beatae vitae istam esse oblectationem videmus, sed etiam 
               levamentum miseriarum. Obsecro, inquit, Torquate, haec dicit Epicurus? Eodem modo is enim tibi nemo dabit, 
               quod, expetendum sit, id esse laudabile. Quasi vero, inquit, perpetua oratio rhetorum solum, non etiam philosophorum sit. 
               Similiter sensus, cum accessit ad naturam, 
               tuetur illam quidem, sed etiam se tuetur; Duo Reges: constructio interrete. Eam si varietatem diceres, intellegerem, 
               ut etiam non dicente te intellego; Hoc igitur quaerentes omnes, et ii, qui quodcumque in mentem veniat aut quodcumque occurrat se sequi dicent, et vos ad naturam revertemini. 
               Laboribus hic praeteritis gaudet, tu iubes voluptatibus, et hic se ad ea revocat, e quibus nihil umquam rettulerit ad corpus, tu totus haeres in corpore. Obsecro, inquit, Torquate, haec dicit 
               Epicurus? Sed quid sentiat, non videtis. Tenuis Lucius Verginius unusque de multis sexagesimo anno post libertatem receptam virginem filiam sua manu occidit potius, quam ea Ap. Igitur neque stultorum
              quisquam beatus neque sapientium non beatus. Inquit, cum ego te hac nova lege videam eodem die accusatori responderet tribus horis perorare, in hac me causa tempus dilaturum putas? Et hi quidem ita non sola 
              virtute finem bonorum contineri putant, ut rebus tamen omnibus virtutem anteponant; Eademne, quae restincta siti? Quod autem satis est, eo quicquid accessit, nimium est; Quid enim possumus hoc agere divinius? 
              Qui bonum omne in virtute ponit, is potest dicere perfici beatam vitam perfectione virtutis; Quod ea non occurrentia fingunt, vincunt Aristonem; Quid, cum volumus nomina eorum, qui quid gesserint, nota nobis esse, 
              parentes, patriam, multa praeterea minime necessaria? Atque ab his initiis profecti omnium virtutum et originem et progressionem persecuti sunt. Quod iam a me expectare noli. Nec tamen ille erat sapiens quis enim 
              hoc aut quando aut ubi aut unde? Estne, quaeso, inquam, sitienti in bibendo voluptas? Haec bene dicuntur, nec ego repugno, sed inter sese ipsa pugnant. Zenonis est, inquam, hoc Stoici. Cuius etiam illi hortuli 
              propinqui non memoriam solum mihi afferunt, sed ipsum videntur in conspectu meo ponere. Atque etiam valítudinem, vires, vacuitatem doloris non propter utilitatem solum, sed etiam ipsas propter se expetemus. Haec 
              quo modo conveniant, non sane intellego. Quod quidem iam fit etiam in Academia. Quo studio Aristophanem putamus aetatem in litteris duxisse? Laelius clamores sofòw ille so lebat Edere 
              compellans gumias ex ordine nostros. Deinde qui fit, ut ego nesciam, sciant omnes, quicumque Epicurei esse voluerunt? Occultum facinus esse potuerit, gaudebit; Equidem etiam Epicurum, in physicis quidem, 
              Democriteum puto. At multis malis affectus. His similes sunt omnes, qui virtuti student levantur vitiis, levantur erroribus, nisi forte censes Ti. Te ipsum, dignissimum maioribus tuis, voluptasne induxit, ut 
              adolescentulus eriperes P. Cur iustitia laudatur? Quamquam tu hanc copiosiorem etiam soles dicere. Sapientem locupletat ipsa natura, cuius divitias Epicurus parabiles esse docuit. Bonum negas esse divitias, 
              praeposìtum esse dicis? Sed quoniam et advesperascit et mihi ad villam revertendum est, nunc quidem hactenus; Quis non odit sordidos, vanos, leves, futtiles? Bestiarum vero nullum iudicium puto. Quid tibi, 
              Torquate, quid huic Triario litterae, quid historiae cognitioque rerum, quid poetarum evolutio, quid tanta tot versuum memoria voluptatis affert? Nec tamen ille erat sapiens quis enim hoc aut quando aut ubi 
              aut unde? Tum Triarius: Posthac quidem, inquit, audacius. Primum in nostrane potestate est, quid meminerimus? Deinde concludebas summum malum esse dolorem, summum bonum voluptatem! Lucius Thorius Balbus fuit, 
              Lanuvinus, quem meminisse tu non potes. Bestiarum vero nullum iudicium puto. Oratio me istius philosophi non offendit; Sed quoniam et advesperascit et mihi ad villam revertendum est, nunc quidem hactenus; 
              Cur fortior sit, si illud, quod tute concedis, asperum et vix ferendum putabit? In qua si nihil est praeter rationem, sit in una virtute finis bonorum; Ex eorum enim scriptis et institutis cum omnis doctrina 
              liberalis, omnis historia. Nescio quo modo praetervolavit oratio. Illi enim inter se dissentiunt. Ex quo illud efficitur, qui bene cenent omnis libenter cenare, 
               qui libenter, non continuo bene. Atqui eorum nihil est eius generis, 
              ut sit in fine atque extrerno bonorum. An quod ita callida est, ut optime possit architectari voluptates?"""
            )
          )
        ],
      ),
    );
  }
}