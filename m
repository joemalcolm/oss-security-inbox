Received: (qmail 13808 invoked by uid 550); 20 Apr 2023 19:38:00 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16100 invoked from network); 20 Apr 2023 18:39:50 -0000
Message-ID: <c621d7a710e1a8aa6d989a60a7258c3c92ff06a8.camel@bzed.de>
From: Bernd Zeimetz <bernd@bzed.de>
To: oss-security@lists.openwall.com
Date: Thu, 20 Apr 2023 20:39:36 +0200
In-Reply-To: <CAH8yC8kDjtf1NZpWjtPTTdToj8p9Sy+LHohW9=k8aJUw2G2y2Q@mail.gmail.com>
References: 
	<CAH8yC8kDjtf1NZpWjtPTTdToj8p9Sy+LHohW9=k8aJUw2G2y2Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-1 
MIME-Version: 1.0
X-cloud-security-sender:bernd@bzed.de
X-cloud-security-recipient:oss-security@lists.openwall.com
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on relay03-mailcontrol.conova.com with 19C2792871B
X-cloud-security-connect: mail.recluse.de[217.196.148.212], TLS=1, IP=217.196.148.212
X-cloud-security:scantime:.6454
Subject: Re: [oss-security] PostgreSQL and CREATEROLE permission

Hi,

> This information showed up on the pgsql-general mailing list at [1].
> It appears a user with CREATEROLE can elevate to root through
> pg_execute_server_program.[2]

really root? As I understand it you gain access to the DB superuser (usually
the postgres user) only. Although I could imagine that you could trick
careless admins into giving you root permissions on that way...


Bernd



--=20
 Bernd Zeimetz                            Debian GNU/Linux Developer
 http://bzed.de                                http://www.debian.org
 GPG Fingerprint: ECA1 E3F2 8E11 2432 D485  DD95 EB36 171A 6FF9 435F

