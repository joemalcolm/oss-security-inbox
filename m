Received: (qmail 10026 invoked by uid 550); 9 May 2022 11:51:48 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28302 invoked from network); 9 May 2022 09:41:28 -0000
Content-Type: text/plain;
	charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
From: Jan Lehnardt <jan@apache.org>
In-Reply-To: <62df0f69-5768-80ea-9dbf-f3e1c6f1e69c@activis.me>
Date: Mon, 9 May 2022 11:41:13 +0200
Cc: oss-security@lists.openwall.com,
 Security CouchDB <security@couchdb.apache.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <063FB760-CBFF-4669-9BDD-49B9D1CD56DD@apache.org>
References: <a388a13c-2f49-a36d-668a-633583013717@apache.org>
 <62df0f69-5768-80ea-9dbf-f3e1c6f1e69c@activis.me>
To: Archange <archange@activis.me>
X-Mailer: Apple Mail (2.3696.80.82.1.1)
Subject: Re: [oss-security] CVE-2022-24706: Apache CouchDB: Remote Code
 Execution Vulnerability in Packaging

Hi Bruno,

first of all, thanks for maintaining CouchDB for Arch. Secondly, for any se=
curity related questions, please do not hesitate to contact security@couchd=
b.apache.org instead of any one of the team individually, as we can=E2=80=
=99t know if any of is available at all times (vacations and whatnot :)

As for your questions, see this PR to our packaging infrastructure for how =
we handle this on Debian and Centos/Rocky: https://github.com/apache/couchd=
b-pkg/pull/92/files

Best
Jan
=E2=80=94

> On 9. May 2022, at 10:54, Archange <archange@activis.me> wrote:
>=20
> Hi,
>=20
> Le 26/04/2022 =C3=A0 12:44, Jan Lehnardt a =C3=A9crit :
>> [=E2=80=A6]
>>=20
>> In addition, all binary packages have been updated to bind `epmd` as
>> well as the CouchDB distribution port to `127.0.0.1` and/or `::1`
>> respectively.
>>=20
>> Credit:
>>=20
>> The Apache CouchDB Team would like to thank Alex Vandiver <alexmv@zulip.=
com> for the report of this issue.
>>=20
>> References:
>>=20
>> https://lists.apache.org/thread/w24wo0h8nlctfps65txvk0oc5hdcnv00
>=20
> Regarding epmd, how is this achieved in the binary packages? Because on A=
rch at least, setting `ERL_EPMD_ADDRESS=3D127.0.0.1` as stated in https://g=
ithub.com/apache/couchdb/issues/999#issuecomment-345068280 is still require=
d. Should Arch make that a default in the systemd service file? For now thi=
s has just been a recommandation for single node security since 2017 (https=
://wiki.archlinux.org/title/CouchDB#Single_node_setup_&_Security), but I ca=
n make it the default (the second part of the wiki advice being now an upst=
ream default, I think it would make some sense).
>=20
> Regards,
> Bruno/Archange (Arch maintainer for CouchDB)
>=20

