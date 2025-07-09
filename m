Received: (qmail 30560 invoked by uid 550); 9 Jul 2025 15:02:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 11717 invoked from network); 9 Jul 2025 14:14:57 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cloudbees.com; s=google; t=1752070487; x=1752675287; darn=lists.openwall.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R6p/OeH2n8lIOoOfFrT1vmwl8AydCrYNU+1nH9ns8cM=;
        b=LCNZINfVoLA9Qup9FJtLpjJWeygDRFcs1RcRvCtW+KByrpmM7taGlcQ16tIagGMOur
         eAdRz2747/MJ1OhuDmCE8kboLit8j+ke97ANXmboEXu6BO0ZBXp/GPitao7geN/eBsI8
         pBwaZsKuR5DuDahVdggteRMH9rRu3i0Doxtnk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752070487; x=1752675287;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R6p/OeH2n8lIOoOfFrT1vmwl8AydCrYNU+1nH9ns8cM=;
        b=iIkeLPoqFBuqVIbNmTznyXhrxxWumrnhfBqqxgBeAm1FPeyir+g5poEqCESaOK1q0A
         NF80tEoZFzAHO7qFx3v86F/MODEJ+CISq3dHWEjy+FfKankWmlrMtoOy7UzGPPUQTt0B
         clT2cPlBDewHq3vRaskJXhARAZMQg7EUOwJ914x329NbP2bPSuYJZNsIHEN2krGXU4Yb
         rWnw8ws/5sIec56XPI6TzaWgSB/X7N2jfp/0Njs2kjGK5kUZKrfynIWezFDzBpcSXrYN
         Ownn1kidzmGJNHPrRGKF2mil7IGfARGLJB6dpxDzk3cMMwA7nMhK25HclQUuYgyb5w+Z
         N8VQ==
X-Gm-Message-State: AOJu0Yz+gQOIBmUET1bS4QcpW0xzJtiZBOBVUuOoiN9YxytNqcudjqWR
	6F5K80vqyoyj6gkxe6N0VUuiO5serP9GwnI/KXgMQEKzAGfnG5oeOWUts/IjT2rnDe0DwsNAC9I
	BT1jjgc/7WPaqp/xxrOJQrmpP1dfPsmv1CzBXBAnQd9wzfUEQo0bnczRCOeWL
X-Gm-Gg: ASbGnctFoeqiDnX4n8XTz1U06FSnIMFB9ge3eVtMMi1Wt/vreOqW9AZ75uf+V1Meu2n
	73CAM12aYhpoGxpxIh9Md3aL6/OcEi4HuYuQdlRYa8e7g5WPrIm2LiDLFu+2i8pnsUuNYRQe0Ol
	74nOtlv143NEx+P0IMVy4CNzjz3C/F7+QcZKdzVuhharBt7z9Z8fX6GurUa8mekM+bBzkmRw73m
	kQ=
X-Google-Smtp-Source: AGHT+IGCaAkS3oItgkZCDwyBWLXVqv3P6gmzfrsZwE3z33hUCNR285o/uxC7gc0SPnI1DttIE+wTxFtkJRgmKxXjVn4=
X-Received: by 2002:a05:6e02:3087:b0:3df:45bb:28fe with SMTP id
 e9e14a558f8ab-3e166ff8e33mr25928565ab.1.1752070486695; Wed, 09 Jul 2025
 07:14:46 -0700 (PDT)
MIME-Version: 1.0
From: Kevin Guerroudj <kguerroudj@cloudbees.com>
Date: Wed, 9 Jul 2025 16:14:36 +0200
X-Gm-Features: Ac12FXz-uRa8uVD7_MtWgiT0ykkyFD4vPyOJQ1kkSAnXuzUyfy74bl2JBlktIoM
Message-ID: <CAKG2iZjC3R6AzUrZC0gn7J2Mrh3BK7PhhgxfjeOrQjEtt7WE0Q@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000fb980706397fb2bc"
Subject: [oss-security] Multiple vulnerabilities in Jenkins plugins

--000000000000fb980706397fb2bc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jenkins is an open source automation server which enables developers around
the world to reliably build, test, and deploy their software.

The following releases contain fixes for security vulnerabilities:

* Applitools Eyes Plugin 1.16.6
* Credentials Binding Plugin 696.v256688029804
* Git Parameter Plugin 444.vca_b_84d3703c2
* HTML Publisher Plugin 427

Additionally, we announce unresolved security issues in the following
plugins:

* Apica Loadtest Plugin
* Aqua Security Scanner Plugin
* Dead Man's Snitch Plugin
* IBM Cloud DevOps Plugin
* IFTTT Build Notifier Plugin
* Kryptowire Plugin
* Nouvola DiveCloud Plugin
* QMetry Test Management Plugin
* ReadyAPI Functional Testing Plugin
* Sensedia Api Platform tools Plugin
* Statistics Gatherer Plugin
* Testsigma Test Plan run Plugin
* User1st uTester Plugin
* VAddy Plugin
* Warrior Framework Plugin
* Xooa Plugin

Summaries of the vulnerabilities are below. More details, severity, and
attribution can be found here:
https://www.jenkins.io/security/advisory/2025-07-09/

We provide advance notification for security updates on this mailing list:
https://groups.google.com/d/forum/jenkinsci-advisories

If you discover security vulnerabilities in Jenkins, please report them as
described here:
https://www.jenkins.io/security/#reporting-vulnerabilities

---

SECURITY-3499 / CVE-2025-53650
Credentials Binding Plugin 687.v619cb_15e923f and earlier does not properly
mask (i.e., replace with asterisks) credentials present in exception error
messages that are written to the build log.


SECURITY-3547 / CVE-2025-53651
HTML Publisher Plugin 425 and earlier displays log messages that include
the absolute paths of files archived during the Publish HTML reports
post-build step, exposing information about the Jenkins controller file
system in the build log.


SECURITY-3419 / CVE-2025-53652
Git Parameter Plugin implements a choice build parameter that lists the
configured Git SCM=E2=80=99s branches, tags, pull requests, and revisions.

Git Parameter Plugin 439.vb_0e46ca_14534 and earlier does not validate that
the Git parameter value submitted to the build matches one of the offered
choices.

This allows attackers with Item/Build permission to inject arbitrary values
into Git parameters.


SECURITY-3542 / CVE-2025-53653
Aqua Security Scanner Plugin 3.2.8 and earlier stores Scanner Tokens for
Aqua API unencrypted in job `config.xml` files on the Jenkins controller as
part of its configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3554 / CVE-2025-53654 (storage) & CVE-2025-53655 (masking)
Statistics Gatherer Plugin 2.0.3 and earlier stores the AWS Secret Key
unencrypted in its global configuration file
`org.jenkins.plugins.statistics.gatherer.StatisticsConfiguration.xml` on
the Jenkins controller as part of its configuration.

This key can be viewed by users with access to the Jenkins controller file
system.

Additionally, the global configuration form does not mask this key,
increasing the potential for attackers to observe and capture it.

As of publication of this advisory, there is no fix.


SECURITY-3556 / CVE-2025-53656 (storage) & CVE-2025-53657 (masking)
ReadyAPI Functional Testing Plugin 1.11 and earlier stores SLM License
Access Keys, client secrets, and passwords unencrypted in job `config.xml`
files on the Jenkins controller as part of its configuration.

These credentials can be viewed by users with Item/Extended Read permission
or access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these credentials,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3509 / CVE-2025-53658
Applitools Eyes Plugin 1.16.5 and earlier does not escape the Applitools
URL on the build page.

This results in a stored cross-site scripting (XSS) vulnerability
exploitable by attackers with Item/Configure permission.


SECURITY-3510 / CVE-2025-53742 (storage) & CVE-2025-53743 (masking)
Applitools Eyes Plugin 1.16.5 and earlier stores Applitools API keys
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these API keys,
increasing the potential for attackers to observe and capture them.


SECURITY-3532 / CVE-2025-53659 (storage) & CVE-2025-53660 (masking)
QMetry Test Management Plugin 1.13 and earlier stores Qmetry Automation API
Keys unencrypted in job `config.xml` files on the Jenkins controller as
part of its configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these API keys,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3515 / CVE-2025-53661
Testsigma Test Plan run Plugin stores Testsigma API keys in job
`config.xml` files on the Jenkins controller as part of its configuration.

While these API keys are stored encrypted on disk, in Testsigma Test Plan
run Plugin 1.6 and earlier, the job configuration form does not mask these
API keys, increasing the potential for attackers to observe and capture
them.

As of publication of this advisory, there is no fix.


SECURITY-3541 / CVE-2025-53662
IFTTT Build Notifier Plugin 1.2 and earlier stores IFTTT Maker Channel Keys
unencrypted in job `config.xml` files on the Jenkins controller as part of
its configuration.

These keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3552 / CVE-2025-53663
IBM Cloud DevOps Plugin 2.0.16 and earlier stores SonarQube authentication
tokens unencrypted in job `config.xml` files on the Jenkins controller as
part of its configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3540 / CVE-2025-53664 (storage) & CVE-2025-53665 (masking)
Apica Loadtest Plugin 1.10 and earlier stores Apica Loadtest LTP
authentication tokens unencrypted in job `config.xml` files on the Jenkins
controller as part of its configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these tokens,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3524 / CVE-2025-53666 (storage) & CVE-2025-53667 (masking)
Dead Man's Snitch Plugin 0.1 stores Dead Man's Snitch tokens unencrypted in
job `config.xml` files on the Jenkins controller as part of its
configuration.

These tokens can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these tokens,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3527 / CVE-2025-53668 (storage) & CVE-2025-53669 (masking)
VAddy Plugin 1.2.8 and earlier stores Vaddy API Auth Keys unencrypted in
job `config.xml` files on the Jenkins controller as part of its
configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these API keys,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3526 / CVE-2025-53670 (storage) & CVE-2025-53671 (masking)
Nouvola DiveCloud Plugin 1.08 and earlier stores DiveCloud API Keys and
Credentials Encryption Keys unencrypted in job `config.xml` files on the
Jenkins controller as part of its configuration.

These API keys can be viewed by users with Item/Extended Read permission or
access to the Jenkins controller file system.

Additionally, the job configuration form does not mask these API keys,
increasing the potential for attackers to observe and capture them.

As of publication of this advisory, there is no fix.


SECURITY-3525 / CVE-2025-53672
Kryptowire Plugin 0.2 and earlier stores the Kryptowire API key unencrypted
in its global configuration file
`org.aerogear.kryptowire.GlobalConfigurationImpl.xml` on the Jenkins
controller as part of its configuration.

This API key can be viewed by users with access to the Jenkins controller
file system.

As of publication of this advisory, there is no fix.


SECURITY-3551 / CVE-2025-53673 (storage) & CVE-2025-53674 (masking)
Sensedia Api Platform tools Plugin 1.0 stores the Sensedia API Manager
integration token unencrypted in its global configuration file
`com.sensedia.configuration.SensediaApiConfiguration.xml` on the Jenkins
controller as part of its configuration.

This token can be viewed by users with access to the Jenkins controller
file system.

Additionally, the global configuration form does not mask the token,
increasing the potential for attackers to observe and capture it.

As of publication of this advisory, there is no fix.


SECURITY-3516 / CVE-2025-53675
Warrior Framework Plugin 1.2 and earlier stores passwords unencrypted in
job `config.xml` files on the Jenkins controller as part of its
configuration.

These passwords can be viewed by users with Item/Extended Read permission
or access to the Jenkins controller file system.

As of publication of this advisory, there is no fix.


SECURITY-3522 / CVE-2025-53676 (storage) & CVE-2025-53677 (masking)
Xooa Plugin 0.0.7 and earlier stores the Xooa Deployment token unencrypted
in its global configuration file `io.jenkins.plugins.xooa.GlobConfig.xml`
on the Jenkins controller as part of its configuration.

This token can be viewed by users with access to the Jenkins controller
file system.

Additionally, the global configuration form does not mask the token,
increasing the potential for attackers to observe and capture it.

As of publication of this advisory, there is no fix.


SECURITY-3518 / CVE-2025-53678
User1st uTester Plugin 1.1 and earlier stores the uTester JWT token
unencrypted in its global configuration file
`io.jenkins.plugins.user1st.utester.UTesterPlugin.xml` on the Jenkins
controller as part of its configuration.

This token can be viewed by users with access to the Jenkins controller
file system.

As of publication of this advisory, there is no fix.

--000000000000fb980706397fb2bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Jenkins is an open source automation server which ena=
bles developers around<br>the world to reliably build, test, and deploy the=
ir software.<br><br>The following releases contain fixes for security vulne=
rabilities:<br><br>* Applitools Eyes Plugin 1.16.6<br>* Credentials Binding=
 Plugin 696.v256688029804<br>* Git Parameter Plugin 444.vca_b_84d3703c2<br>=
* HTML Publisher Plugin 427<br><br>Additionally, we announce unresolved sec=
urity issues in the following<br>plugins:<br><br>* Apica Loadtest Plugin<br=
>* Aqua Security Scanner Plugin<br>* Dead Man&#39;s Snitch Plugin<br>* IBM =
Cloud DevOps Plugin<br>* IFTTT Build Notifier Plugin<br>* Kryptowire Plugin=
<br>* Nouvola DiveCloud Plugin<br>* QMetry Test Management Plugin<br>* Read=
yAPI Functional Testing Plugin<br>* Sensedia Api Platform tools Plugin<br>*=
 Statistics Gatherer Plugin<br>* Testsigma Test Plan run Plugin<br>* User1s=
t uTester Plugin<br>* VAddy Plugin<br>* Warrior Framework Plugin<br>* Xooa =
Plugin<br><br>Summaries of the vulnerabilities are below. More details, sev=
erity, and<br>attribution can be found here:<br><a href=3D"https://www.jenk=
ins.io/security/advisory/2025-07-09/">https://www.jenkins.io/security/advis=
ory/2025-07-09/</a><br><br>We provide advance notification for security upd=
ates on this mailing list:<br><a href=3D"https://groups.google.com/d/forum/=
jenkinsci-advisories">https://groups.google.com/d/forum/jenkinsci-advisorie=
s</a><br><br>If you discover security vulnerabilities in Jenkins, please re=
port them as<br>described here:<br><a href=3D"https://www.jenkins.io/securi=
ty/#reporting-vulnerabilities">https://www.jenkins.io/security/#reporting-v=
ulnerabilities</a><br><br>---<br><br>SECURITY-3499 / CVE-2025-53650<br>Cred=
entials Binding Plugin 687.v619cb_15e923f and earlier does not properly<br>=
mask (i.e., replace with asterisks) credentials present in exception error<=
br>messages that are written to the build log.<br><br><br>SECURITY-3547 / C=
VE-2025-53651<br>HTML Publisher Plugin 425 and earlier displays log message=
s that include<br>the absolute paths of files archived during the Publish H=
TML reports<br>post-build step, exposing information about the Jenkins cont=
roller file<br>system in the build log.<br><br><br>SECURITY-3419 / CVE-2025=
-53652<br>Git Parameter Plugin implements a choice build parameter that lis=
ts the<br>configured Git SCM=E2=80=99s branches, tags, pull requests, and r=
evisions.<br><br>Git Parameter Plugin 439.vb_0e46ca_14534 and earlier does =
not validate that<br>the Git parameter value submitted to the build matches=
 one of the offered<br>choices.<br><br>This allows attackers with Item/Buil=
d permission to inject arbitrary values<br>into Git parameters.<br><br><br>=
SECURITY-3542 / CVE-2025-53653<br>Aqua Security Scanner Plugin 3.2.8 and ea=
rlier stores Scanner Tokens for<br>Aqua API unencrypted in job `config.xml`=
 files on the Jenkins controller as<br>part of its configuration.<br><br>Th=
ese tokens can be viewed by users with Item/Extended Read permission or<br>=
access to the Jenkins controller file system.<br><br>As of publication of t=
his advisory, there is no fix.<br><br><br>SECURITY-3554 / CVE-2025-53654 (s=
torage) &amp; CVE-2025-53655 (masking)<br>Statistics Gatherer Plugin 2.0.3 =
and earlier stores the AWS Secret Key<br>unencrypted in its global configur=
ation file<br>`org.jenkins.plugins.statistics.gatherer.StatisticsConfigurat=
ion.xml` on<br>the Jenkins controller as part of its configuration.<br><br>=
This key can be viewed by users with access to the Jenkins controller file<=
br>system.<br><br>Additionally, the global configuration form does not mask=
 this key,<br>increasing the potential for attackers to observe and capture=
 it.<br><br>As of publication of this advisory, there is no fix.<br><br><br=
>SECURITY-3556 / CVE-2025-53656 (storage) &amp; CVE-2025-53657 (masking)<br=
>ReadyAPI Functional Testing Plugin 1.11 and earlier stores SLM License<br>=
Access Keys, client secrets, and passwords unencrypted in job `config.xml`<=
br>files on the Jenkins controller as part of its configuration.<br><br>The=
se credentials can be viewed by users with Item/Extended Read permission<br=
>or access to the Jenkins controller file system.<br><br>Additionally, the =
job configuration form does not mask these credentials,<br>increasing the p=
otential for attackers to observe and capture them.<br><br>As of publicatio=
n of this advisory, there is no fix.<br><br><br>SECURITY-3509 / CVE-2025-53=
658<br>Applitools Eyes Plugin 1.16.5 and earlier does not escape the Applit=
ools<br>URL on the build page.<br><br>This results in a stored cross-site s=
cripting (XSS) vulnerability<br>exploitable by attackers with Item/Configur=
e permission.<br><br><br>SECURITY-3510 / CVE-2025-53742 (storage) &amp; CVE=
-2025-53743 (masking)<br>Applitools Eyes Plugin 1.16.5 and earlier stores A=
pplitools API keys<br>unencrypted in job `config.xml` files on the Jenkins =
controller as part of<br>its configuration.<br><br>These API keys can be vi=
ewed by users with Item/Extended Read permission or<br>access to the Jenkin=
s controller file system.<br><br>Additionally, the job configuration form d=
oes not mask these API keys,<br>increasing the potential for attackers to o=
bserve and capture them.<br><br><br>SECURITY-3532 / CVE-2025-53659 (storage=
) &amp; CVE-2025-53660 (masking)<br>QMetry Test Management Plugin 1.13 and =
earlier stores Qmetry Automation API<br>Keys unencrypted in job `config.xml=
` files on the Jenkins controller as<br>part of its configuration.<br><br>T=
hese API keys can be viewed by users with Item/Extended Read permission or<=
br>access to the Jenkins controller file system.<br><br>Additionally, the j=
ob configuration form does not mask these API keys,<br>increasing the poten=
tial for attackers to observe and capture them.<br><br>As of publication of=
 this advisory, there is no fix.<br><br><br>SECURITY-3515 / CVE-2025-53661<=
br>Testsigma Test Plan run Plugin stores Testsigma API keys in job<br>`conf=
ig.xml` files on the Jenkins controller as part of its configuration.<br><b=
r>While these API keys are stored encrypted on disk, in Testsigma Test Plan=
<br>run Plugin 1.6 and earlier, the job configuration form does not mask th=
ese<br>API keys, increasing the potential for attackers to observe and capt=
ure<br>them.<br><br>As of publication of this advisory, there is no fix.<br=
><br><br>SECURITY-3541 / CVE-2025-53662<br>IFTTT Build Notifier Plugin 1.2 =
and earlier stores IFTTT Maker Channel Keys<br>unencrypted in job `config.x=
ml` files on the Jenkins controller as part of<br>its configuration.<br><br=
>These keys can be viewed by users with Item/Extended Read permission or<br=
>access to the Jenkins controller file system.<br><br>As of publication of =
this advisory, there is no fix.<br><br><br>SECURITY-3552 / CVE-2025-53663<b=
r>IBM Cloud DevOps Plugin 2.0.16 and earlier stores SonarQube authenticatio=
n<br>tokens unencrypted in job `config.xml` files on the Jenkins controller=
 as<br>part of its configuration.<br><br>These tokens can be viewed by user=
s with Item/Extended Read permission or<br>access to the Jenkins controller=
 file system.<br><br>As of publication of this advisory, there is no fix.<b=
r><br><br>SECURITY-3540 / CVE-2025-53664 (storage) &amp; CVE-2025-53665 (ma=
sking)<br>Apica Loadtest Plugin 1.10 and earlier stores Apica Loadtest LTP<=
br>authentication tokens unencrypted in job `config.xml` files on the Jenki=
ns<br>controller as part of its configuration.<br><br>These tokens can be v=
iewed by users with Item/Extended Read permission or<br>access to the Jenki=
ns controller file system.<br><br>Additionally, the job configuration form =
does not mask these tokens,<br>increasing the potential for attackers to ob=
serve and capture them.<br><br>As of publication of this advisory, there is=
 no fix.<br><br><br>SECURITY-3524 / CVE-2025-53666 (storage) &amp; CVE-2025=
-53667 (masking)<br>Dead Man&#39;s Snitch Plugin 0.1 stores Dead Man&#39;s =
Snitch tokens unencrypted in<br>job `config.xml` files on the Jenkins contr=
oller as part of its<br>configuration.<br><br>These tokens can be viewed by=
 users with Item/Extended Read permission or<br>access to the Jenkins contr=
oller file system.<br><br>Additionally, the job configuration form does not=
 mask these tokens,<br>increasing the potential for attackers to observe an=
d capture them.<br><br>As of publication of this advisory, there is no fix.=
<br><br><br>SECURITY-3527 / CVE-2025-53668 (storage) &amp; CVE-2025-53669 (=
masking)<br>VAddy Plugin 1.2.8 and earlier stores Vaddy API Auth Keys unenc=
rypted in<br>job `config.xml` files on the Jenkins controller as part of it=
s<br>configuration.<br><br>These API keys can be viewed by users with Item/=
Extended Read permission or<br>access to the Jenkins controller file system=
.<br><br>Additionally, the job configuration form does not mask these API k=
eys,<br>increasing the potential for attackers to observe and capture them.=
<br><br>As of publication of this advisory, there is no fix.<br><br><br>SEC=
URITY-3526 / CVE-2025-53670 (storage) &amp; CVE-2025-53671 (masking)<br>Nou=
vola DiveCloud Plugin 1.08 and earlier stores DiveCloud API Keys and<br>Cre=
dentials Encryption Keys unencrypted in job `config.xml` files on the<br>Je=
nkins controller as part of its configuration.<br><br>These API keys can be=
 viewed by users with Item/Extended Read permission or<br>access to the Jen=
kins controller file system.<br><br>Additionally, the job configuration for=
m does not mask these API keys,<br>increasing the potential for attackers t=
o observe and capture them.<br><br>As of publication of this advisory, ther=
e is no fix.<br><br><br>SECURITY-3525 / CVE-2025-53672<br>Kryptowire Plugin=
 0.2 and earlier stores the Kryptowire API key unencrypted<br>in its global=
 configuration file<br>`org.aerogear.kryptowire.GlobalConfigurationImpl.xml=
` on the Jenkins<br>controller as part of its configuration.<br><br>This AP=
I key can be viewed by users with access to the Jenkins controller<br>file =
system.<br><br>As of publication of this advisory, there is no fix.<br><br>=
<br>SECURITY-3551 / CVE-2025-53673 (storage) &amp; CVE-2025-53674 (masking)=
<br>Sensedia Api Platform tools Plugin 1.0 stores the Sensedia API Manager<=
br>integration token unencrypted in its global configuration file<br>`com.s=
ensedia.configuration.SensediaApiConfiguration.xml` on the Jenkins<br>contr=
oller as part of its configuration.<br><br>This token can be viewed by user=
s with access to the Jenkins controller<br>file system.<br><br>Additionally=
, the global configuration form does not mask the token,<br>increasing the =
potential for attackers to observe and capture it.<br><br>As of publication=
 of this advisory, there is no fix.<br><br><br>SECURITY-3516 / CVE-2025-536=
75<br>Warrior Framework Plugin 1.2 and earlier stores passwords unencrypted=
 in<br>job `config.xml` files on the Jenkins controller as part of its<br>c=
onfiguration.<br><br>These passwords can be viewed by users with Item/Exten=
ded Read permission<br>or access to the Jenkins controller file system.<br>=
<br>As of publication of this advisory, there is no fix.<br><br><br>SECURIT=
Y-3522 / CVE-2025-53676 (storage) &amp; CVE-2025-53677 (masking)<br>Xooa Pl=
ugin 0.0.7 and earlier stores the Xooa Deployment token unencrypted<br>in i=
ts global configuration file `io.jenkins.plugins.xooa.GlobConfig.xml`<br>on=
 the Jenkins controller as part of its configuration.<br><br>This token can=
 be viewed by users with access to the Jenkins controller<br>file system.<b=
r><br>Additionally, the global configuration form does not mask the token,<=
br>increasing the potential for attackers to observe and capture it.<br><br=
>As of publication of this advisory, there is no fix.<br><br><br>SECURITY-3=
518 / CVE-2025-53678<br>User1st uTester Plugin 1.1 and earlier stores the u=
Tester JWT token<br>unencrypted in its global configuration file<br>`io.jen=
kins.plugins.user1st.utester.UTesterPlugin.xml` on the Jenkins<br>controlle=
r as part of its configuration.<br><br>This token can be viewed by users wi=
th access to the Jenkins controller<br>file system.<br><br>As of publicatio=
n of this advisory, there is no fix.</div><div dir=3D"ltr" class=3D"gmail_s=
ignature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"></div></div><=
/div>

--000000000000fb980706397fb2bc--
