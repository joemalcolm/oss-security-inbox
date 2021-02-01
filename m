X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["967" "Monday" "1" "February" "2021" "23:49:20" "+0000" "Aleksey Yeschenko" "aleksey@apache.org" "<DFF27630-BB03-4FC8-9A1D-75F16C947044@apache.org>" "32" "[oss-security] [CVE-2020-17516] Apache Cassandra internode encryption enforcement vulnerability " nil nil nil "2" "2021020123:49:20" "[oss-security] [CVE-2020-17516] Apache Cassandra internode encryption enforcement vulnerability" (number mark "U       aleksey@apac Feb  1   32/967   " thread-indent "\"[oss-security] [CVE-2020-17516] Apache Cassandra internode encryption enforcement vulnerability \"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-17516] Apache Cassandra internode encryption enforcement vulnerability " nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 16228 invoked by uid 550); 2 Feb 2021 07:36:53 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1494 invoked from network); 1 Feb 2021 23:49:34 -0000
X-ME-Sender: <xms:gZMYYDWA1yyY5VA0RA03dZdCzOT2avHSCXIUbMZbT4yrzSvUJUKUIQ>
    <xme:gZMYYLlQwyOwrLoyb3PATkFmq5VNj-BdMpSMilkvABHULPkWHXsKE6WV4LJWMN7Fo
    jbPLzQgVLEPNBj6fxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeelgddtkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhephfgtgfgguffkfffvofesthhqmhdthh
    dtjeenucfhrhhomheptehlvghkshgvhicujggvshgthhgvnhhkohcuoegrlhgvkhhsvgih
    segrphgrtghhvgdrohhrgheqnecuggftrfgrthhtvghrnhepvdfffeeikeefledufeefje
    ekudfguedtleduudekvdegjeejleetveevgffhkeevnecukfhppeekuddruddtiedrgeeh
    rddvjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    grlhgvkhhsvgihodhmvghsmhhtphgruhhthhhpvghrshhonhgrlhhithihqdduudefudeg
    hedtudeiqddvheduleegkedvgedqrghlvghkshgvhieppegrphgrtghhvgdrohhrgheshi
    gvshgthhgvnhhkohdrtghomh
X-ME-Proxy: <xmx:gZMYYPbsm4TWAlcBQw_vSU2D6baKL_kE39gZxrCXpH2VOdPL5eCsjQ>
    <xmx:gZMYYOVU9JgrwiDjwEEDTw_YtbB8OVFpmEswhmyH7N3KNfJwMQU0VA>
    <xmx:gZMYYNmnrbk3TxNGD5qur4Yt0APwcizrQZpA0jYXnRY91MXP70MU2A>
    <xmx:gZMYYJzcYZ9gWRHI5iYrD5ADw_U6HNu-dHztChAE2wCCKLjgHcaJ3w>
From: Aleksey Yeschenko <aleksey@apache.org>
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.40.0.2.32\))
Message-Id: <DFF27630-BB03-4FC8-9A1D-75F16C947044@apache.org>
Date: Mon, 1 Feb 2021 23:49:20 +0000
To: oss-security@lists.openwall.com
X-Mailer: Apple Mail (2.3654.40.0.2.32)
Subject: [oss-security] [CVE-2020-17516] Apache Cassandra internode encryption enforcement
 vulnerability 

CVE-2020-17516: Apache Cassandra doesn't enforce encryption setting on inbo=
und internode connections

Severity:
Important

Vendor:
The Apache Software Foundation

Versions Affected:
Cassandra 2.1.0 to 2.1.22
Cassandra 2.2.0 to 2.2.19
Cassandra 3.0.0 to 3.0.23
Cassandra 3.11.0 to 3.11.9

Description:
When using =E2=80=98dc=E2=80=99 or =E2=80=98rack=E2=80=99 internode_encrypt=
ion setting, a Cassandra instance allows both encrypted
and unencrypted connections. A misconfigured node or a malicious user can u=
se the unencrypted
connection despite not being in the same rack or dc, and bypass mutual TLS =
requirement.

Mitigation:
Users of ALL versions should switch from =E2=80=98dc=E2=80=99 or =E2=80=98r=
ack=E2=80=99 to =E2=80=98all=E2=80=99 internode_encryption setting, as they=
 are inherently insecure
3.0.x users should additionally upgrade to 3.0.24
3.11.x users should additionally upgrade to 3.11.10

Credit:
This issue was discoverd by Jon Meredith=
