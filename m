Received: (qmail 11833 invoked by uid 550); 9 May 2022 11:52:03 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 16297 invoked from network); 9 May 2022 10:37:19 -0000
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
From: Jan Lehnardt <jan@apache.org>
In-Reply-To: <76ef068a-c6d3-109d-6e70-84007151f487@activis.me>
Date: Mon, 9 May 2022 12:36:58 +0200
Cc: oss-security@lists.openwall.com,
 Security CouchDB <security@couchdb.apache.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <347664F1-79BA-433D-BF04-1D015A074C84@apache.org>
References: <a388a13c-2f49-a36d-668a-633583013717@apache.org>
 <62df0f69-5768-80ea-9dbf-f3e1c6f1e69c@activis.me>
 <063FB760-CBFF-4669-9BDD-49B9D1CD56DD@apache.org>
 <76ef068a-c6d3-109d-6e70-84007151f487@activis.me>
To: Archange <archange@activis.me>
X-Mailer: Apple Mail (2.3696.80.82.1.1)
Subject: Re: [oss-security] CVE-2022-24706: Apache CouchDB: Remote Code
 Execution Vulnerability in Packaging


> On 9. May 2022, at 11:46, Archange <archange@activis.me> wrote:
>=20
> Le 09/05/2022 =C3=A0 13:41, Jan Lehnardt a =C3=A9crit :
>> Hi Bruno,
>>=20
>> first of all, thanks for maintaining CouchDB for Arch. Secondly, for any=
 security related questions, please do not hesitate to contact security@cou=
chdb.apache.org instead of any one of the team individually, as we can=E2=
=80=99t know if any of is available at all times (vacations and whatnot :)
>=20
> Sure, you should put this address in copy when posting to oss-security th=
en, so you would be sure people reply to that one too.=E2=80=AF;)

This is automated by ASF infrastructure, I sadly have no say over this. But=
 maybe we can a footer with the address next time :)

>=20
>> As for your questions, see this PR to our packaging infrastructure for h=
ow we handle this on Debian and Centos/Rocky: https://github.com/apache/cou=
chdb-pkg/pull/92/files
>=20
> Thanks, so you use a default env file to set the variable and allow peopl=
e to easily change it in the case of a clustered setup. Will do so as well =
then!
>=20

Perfect, thanks!
Jan
=E2=80=94

