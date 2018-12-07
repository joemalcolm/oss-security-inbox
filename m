X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1799" "Friday" "7" "December" "2018" "15:43:02" "+0100" "Hanno =?UTF-8?B?QsO2Y2s=?=" "hanno@hboeck.de" "<20181207154302.25666dc7@computer>" "46" "[oss-security] Enigmail XSA issue with WKD and HTTP authentication" "^Date:" nil nil "12" "2018120714:43:02" "[oss-security] Enigmail XSA issue with WKD and HTTP authentication" (number mark "U       hanno@hboeck Dec  7   46/1799  " thread-indent "\"[oss-security] Enigmail XSA issue with WKD and HTTP authentication\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28152 invoked by uid 550); 7 Dec 2018 14:43:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 28119 invoked from network); 7 Dec 2018 14:43:11 -0000
Message-ID: <20181207154302.25666dc7@computer>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 7 Dec 2018 15:43:02 +0100
From: Hanno =?UTF-8?B?QsO2Y2s=?= <hanno@hboeck.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Enigmail XSA issue with WKD and HTTP authentication
To: oss-security@lists.openwall.com

Hi,

There's an issue in Enigmail that can potentially be abused for
phishing attacks involving WKD and HTTP authentication.

Web Key Directory or WKD [1] is a feature where OpenPGP keys can be
fetched via a defined web address of the form
https://example.org/.well-known/./openpgpkey/hu/[zbase32_sha1_hash_of_local=
_part]

Enigmail automatically tries to fetch WKD keys already when writing a
mail, so simply having a mail address in "To" will cause an HTTPS
request.

When the server answers with a HTTP authentication challenge (HTTP code
401) then Enigmail/Thunderbird would open up an HTTP login window.
While the login window will show the hostname, this can be very
confusing for a user. If randomly a login window pops up within a mail
client it's plausible that some users will enter their email
credentials. Here's a video to illustrate the issue:
https://www.youtube.com/watch?v=3DeFSMBX98XiE

Similar attacks in browsers have previously been described as
"Cross-Site-Authentication" or XSA [2].

I think it would be good if the WKD draft would be updated to clarify
that a client should never answer to any 401 authentication requests
from the server.


I discovered this together with Moritz Tremmel (We discovered this by
accident due to a server serving HTTP authentication requests for
every path starting with a dot). After we reported this to Enigmail we
learned that this was previously reported in the public bug tracker:
https://sourceforge.net/p/enigmail/bugs/890/

[1] https://tools.ietf.org/html/draft-koch-openpgp-webkey-service-07
[2]
http://www.joachim-breitner.de/blog/56-Like_XSS,_just_simpler_and_harder_to=
_prevent__The_Cross_Site_Auth_(XSA)_Attack
--=20
Hanno B=C3=B6ck
https://hboeck.de/

mail/jabber: hanno@hboeck.de
GPG: FE73757FA60E4E21B937579FA5880072BBB51E42
