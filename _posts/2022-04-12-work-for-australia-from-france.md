---
layout: post
title: 'Contract for Australian Business from France'
date: 2022-04-12 18:43
categories: [work, legal]
published: false
---

Some notes of my research regarding the possibility to contract for Australian companies remotely from France. I am dual citizen Oz and French so I will leave the visa question aside. 

# Legal

## Australian side

[Velocity Accounting - What's The Difference Between An ABN And An ACN?](https://www.velocityaccounting.com.au/our-resources/frequently-asked-questions/whats-the-difference-between-an-abn-and-an-acn/)

https://business.gov.au/planning/business-structures-and-types/business-structures/difference-between-a-sole-trader-and-a-company

https://business.gov.au/planning/business-structures-and-types/business-structures/tax-differences-between-a-sole-trader-and-a-company

small business tax offset

https://www.ato.gov.au/Individuals/myTax/2021/In-detail/Small-business-income-tax-offset/

### ACN

Australian company number issued by ASIC, only businesses registered as a company need an ACN

https://www.velocityaccounting.com.au/our-resources/frequently-asked-questions/whats-the-difference-between-an-abn-and-an-acn/

### ABN

Issued by ATO

 [Australian business number (ABN)](https://business.gov.au/registrations/register-for-an-australian-business-number-abn), 3 options

#### Sole trader

- Tax is income based

- | Taxable income for foreign residents | Tax on this income                              |
  | ------------------------------------ | ----------------------------------------------- |
  | 0 – $120,000                         | 32.5 cents for each $1                          |
  | $120,001 – $180,000                  | $39,000 plus 37 cents for each $1 over $120,000 |
  | $180,001 and over                    | $61,200 plus 45 cents for each $1 over $180,000 |

- You would get a tax credit on the french side for it (2006 Treaty)
  
  $$
  t1 = Tax\ You\ Paid\ in\ Australia \\
t2 = Tax\ You\ Would\ Pay\ In\ France\ For\ That\ Revenue \\
taxCredit = min(t1, t2)
  $$

- Sole traders and partnerships pay themselves simply by **withdrawing cash from the business**.
   Those personal withdrawals are counted as profit and are taxed at the 
  end of the year. Set aside a percentage of your earnings in a separate 
  bank account throughout the year so you have money to pay the tax bill 
  when it's due.

- Salary and wage expenses are a type of operating expense (sometimes called 
  working or revenue expense). If you're a sole trader, **you can usually claim a deduction for your own super contributions in your personal tax return**.Jun 19, 2019

#### Company

- requires ACN

- $30 \% $ tax rate 

- actually $25\%$ ? considering it is a [base rate entity](https://www.ato.gov.au/rates/changes-to-company-tax-rates/#Baserateentitycompanytaxrate)

https://www.exfin.com/company-tax-australia

https://www.ato.gov.au/Business/Income-and-deductions-for-business/Deductions/Deductions-for-salaries,-wages-and-super/

What's the consequence if you do not withdraw and invest in properties? 
At what point in time does it backfire

#### Trust

?

### GST

If you intend to get more revenues than `$75k`  per year you need to register for the GST and charge clients with it (`10%` on top or the rate) 

### Branch

https://www.shrm.org/resourcesandtools/hr-topics/global-hr/pages/paying-employees-abroad.aspx

> France, Estonia, Sri Lanka and some other countries offer a **payroll law compliance option for the employer**,
>  under which foreign employers with no in-country premises can make 
> special “payroll only” registrations with in-country tax and social 
> security agencies so they can issue a legal local payroll.

[Foreign employer without a registered company in France - Neteem Solutions](https://www.neteemsolutions.com/en/fef/)

A Foreign Employer in France (FEF) is a company or organization based 
outside France that wishes to use the services of a worker based in 
France without setting up an establishment or subsidiary there.

## French side

[Benefits in France - Neteem Solutions](https://www.neteemsolutions.com/en/benefits-in-france/#toggle-id-1)

[Entreprise étrangère sans établissement en France - Urssaf.fr](https://www.urssaf.fr/portail/home/espaces-dedies/entreprise-etrangere-sans-etabli.html)

### URSSAF

[Foreign Companies Service](https://www.foreign-companies.urssaf.eu/index.php/en/)

[Employeur établi en France vous recevez un salarié qui vient d'un État lié à la France par un accord bilatéral de sécurité sociale](https://www.cleiss.fr/employeurs/empl_france_recoit_bilat.html)

Social Security

#### CSG

[Generalized Social Contribution - Wikipedia](https://en.wikipedia.org/wiki/Generalized_Social_Contribution)  Funding the social protection system. The CSG payable by all residents in France, except (for earned & retirement income), the rate is `9.2%`of which `2.4%` is treated as taxable income for income tax

#### CRDS

[Contribution pour le remboursement de la dette sociale — Wikipédia](https://fr.wikipedia.org/wiki/Contribution_pour_le_remboursement_de_la_dette_sociale) rate is `0,5 %`

#### Income Tax (Impot sur le Revenu)

https://www.impots.gouv.fr/sites/default/files/media/10_conventions/australie/australie_convention-avec-l-australie-signee-le-20.06.2006-en-vigueur-au-01.06.2009_fd_3747.pdf

| Income Share               | Tax Rate |
| -------------------------- | -------- |
| Up to €10,225              | 0%       |
| Between €10,225 - €26,070  | 11%      |
| Between €26,070 - €74,545  | 30%      |
| Between €74,545 - €160,336 | 41%      |
| Above €160,336             | 45%      |

#### Smic

Le **Smic** mensuel **net est** d'environ 1 269 euros au 1er janvier 2022 (1 258 euros en octobre 2021, 1 231 euros depuis janvier 2021). Le **Smic** mensuel brut **est** lui de 1 603,12 euros au 1er janvier 2022 (1 589,47 euros à compter d'octobre 2021, 1 554,58 euros depuis janvier 2021).

# Simulation

[Je recrute mon 1er salarié, combien cela va me coûter si je le paie au Smic ? &#8211; Amarris Contact](https://www.amarris-contact.fr/je-recrute-mon-1er-salarie-combien-cela-va-couter-si-je-le-paie-au-smic/)

Simulation pour versement d'un SMIC

> En règle générale, elles 
> s'élèvent à environ 42 % du montant du salaire brut. En revanche si le 
> salaire est inférieur à 1,6 fois le **SMIC**, soit 2 565 € brut mensuel à compter du 1er janvier 2022, l'employeur aura droit à la réduction générale des **cotisations patronales** plus couramment appelée réduction Fillon

[Salarié au SMIC 2022 : quel coût pour mon entreprise ? | Rue de la Paye](https://www.ruedelapaye.com/e-mag/cout-entreprise-smic-2022/)

> Après réduction des charges, il restera en règle générale 13 % des 
> charges patronales à payer par l’employeur, soit 200 € environ 
> s’ajoutent chaque mois au coût d’un salarié au SMIC.

1800 euros sur l'annee = 21600 euros 

taux du jour $aud/eur = 0.69$ soit 31305 aud 

Donc, il y a 31305 aud de cout pour la branche a verser par annee. 

Cote francais, l'employe recoit 1300 euros net par mois.

Il reste donc 160k+ AUD de benefices pour l'entreprise australienne.

Differents scenarios

## Company

Le capital augmente de $160k * 0.75 = 120k $ every year

https://www.ato.gov.au/Business/Income-and-deductions-for-business/Deductions/Deductions-for-salaries,-wages-and-super/

## Sole trader

Withdraw? Pay tax, get a tax credit for the french side. 

$160000 - (39000 + (40000 * 0.37)) = 106200
$



## Company distributions

https://www.ato.gov.au/business/private-company-benefits---division-7a-dividends/in-detail/division-7a---use-of-assets/
