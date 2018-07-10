X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1257" "Tuesday" "10" "July" "2018" "11:41:08" "+0200" "Emmanuel Lecharny" "elecharny@apache.org" "<CAG8=FRhFGcy-oO8PEWUpv2nc=DL0YBNbjdHkq2jck4g+B73UHQ@mail.gmail.com>" "46" "[oss-security] [Annoucement] CVE-2018-1337 Plaintext Password Disclosure in Secured Channel" nil nil nil "7" "2018071009:41:08" "[oss-security] [Annoucement] CVE-2018-1337 Plaintext Password Disclosure in Secured Channel" (number mark "U       elecharny@ap Jul 10   46/1257  " thread-indent "\"[oss-security] [Annoucement] CVE-2018-1337 Plaintext Password Disclosure in Secured Channel\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 7738 invoked by uid 550); 10 Jul 2018 09:43:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1555 invoked from network); 10 Jul 2018 09:41:24 -0000
X-Gm-Message-State: AOUpUlH1M08uwIdlFYH5vBw1XZFrwynXjehrMUmhF7QdVdGdz8S35X8Y
	+vudALwZikxhD0kIZSp+3HfA0eY5H9P4NEyMBiw=
X-Google-Smtp-Source: AAOMgpdLlayG2N1CVCSC/AjpLgThe1TMtwyFmYU+gqPgQPTSExVOX6mcl8iqBggRFVR4MPviHmSij5K1/IB9m06nuAw=
X-Received: by 2002:a24:c2c2:: with SMTP id i185-v6mr3385880itg.76.1531215669495;
 Tue, 10 Jul 2018 02:41:09 -0700 (PDT)
MIME-Version: 1.0
From: Emmanuel Lecharny <elecharny@apache.org>
Date: Tue, 10 Jul 2018 11:41:08 +0200
X-Gmail-Original-Message-ID: <CAG8=FRhFGcy-oO8PEWUpv2nc=DL0YBNbjdHkq2jck4g+B73UHQ@mail.gmail.com>
Message-ID: <CAG8=FRhFGcy-oO8PEWUpv2nc=DL0YBNbjdHkq2jck4g+B73UHQ@mail.gmail.com>
To: announce@apache.org, 
	Apache Directory Developers List <dev@directory.apache.org>, 
	"users@directory.apache.org" <users@directory.apache.org>, api@directory.apache.org, security@apache.org, 
	oss-security@lists.openwall.com
Cc: wei.deng@datastax.com, mike.adamson@datastax.com, 
	jeremiah.jordan@datastax.com, ben.coverston@datastax.com
Content-Type: multipart/alternative; boundary="0000000000000e12f30570a1ee72"
Subject: [oss-security] [Annoucement] CVE-2018-1337 Plaintext Password Disclosure in Secured Channel

--0000000000000e12f30570a1ee72
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

CVE-2018-1337: Plaintext Password Disclosure in Secured Channel

Severity: Critical

Vendor: The Apache Software Foundation

Versions Affected:
Apache LDAP API 1.0.0

Description:
A bug in the way the SSL Filter was setup made it possible for
another thread to use the connection before the TLS layer has been
established, if the connection has already been used and put back
in a pool of connections, leading to leaking any informations
contained in this request (including the credentials when sending
a BIND request)

Mitigation:

Users are urged to use this 1.0.2 version ASAP. There is no impact
in their application, the API remains unchanged.

The previous version (LDAP API 1.0.1) was a workaround for this
problem.

History:
2018-05-15 Original advisory

Credit:
This issue has been reported by Wei Deng (Datastax), the initial
workaround was proposed by Mike Adamson (Datastax) and the further
investigations/tests/verification were conducted by Wei Deng,
Mike Adamson, Jeremiah Kordan (Datastax) and Ben Coverston (Datastax).


--=20
Regards,
Cordialement,
Emmanuel L=C3=A9charny
www.iktek.com

--0000000000000e12f30570a1ee72--
