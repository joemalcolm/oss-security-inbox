X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1794" "Thursday" "8" "March" "2018" "19:41:23" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20180308194123.0fa89fc3@pc1>" "49" "[oss-security] Vulnerabilities and default credentials in Ilias e-learning software / German gov hack" "^Date:" nil nil "3" "2018030818:41:23" "[oss-security] Vulnerabilities and default credentials in Ilias e-learning software / German gov hack" (number mark "        hanno@hboeck Mar  8   49/1794  " thread-indent "\"[oss-security] Vulnerabilities and default credentials in Ilias e-learning software / German gov hack\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23947 invoked by uid 550); 8 Mar 2018 18:41:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23925 invoked from network); 8 Mar 2018 18:41:36 -0000
Message-ID: <20180308194123.0fa89fc3@pc1>
X-Mailer: Claws Mail 3.16.0 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 8 Mar 2018 19:41:23 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Vulnerabilities and default credentials in Ilias e-learning
 software / German gov hack
To: oss-security@lists.openwall.com

Hi,

You may have heard that the German government has been hacked recently.
As we learned today the entry point of the hack likely happened via the
e-learning software Ilias. It's an opensource PHP-based software:
https://www.ilias.de/

We had an article about this today on Golem.de and we also created an
English translation:
https://www.golem.de/news/government-hack-hack-on-german-government-via-e-l=
earning-software-ilias-1803-133231.html

While we don't know what exactly happened, Ilias itself seems to have
had quite a few vulnerabilties in the past:

Arbitrary copying of files
https://lists.ilias.de/pipermail/ilias-admins/2017-March/000020.html

Cross Site Scripting in SVG import
https://lists.ilias.de/pipermail/ilias-admins/2017-April/000024.html

Cross Site Scripting due to lack of escaping
https://lists.ilias.de/pipermail/ilias-admins/2017-June/000034.html

System emails sometimes get delivered to the wrong people
https://lists.ilias.de/pipermail/ilias-admins/2017-August/000047.html

Vulnerability in handling of media files with unknown impact
https://lists.ilias.de/pipermail/ilias-admins/2017-October/000053.html

Reflected cross site scripting
https://lists.ilias.de/pipermail/ilias-admins/2018-February/000064.html


Appart from all that the software by default creates an administrator
account with the default username "root" and password "homer". The user
is neither forced nor asked to change these.
(Opinions here may differ, but in my opinion default credentials are a
design vulnerability on their own.)

If you happen to run Ilias please update to the latest version and make
sure that you have changed the password for the "root" account.

--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
