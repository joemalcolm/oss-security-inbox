X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2597" "Tuesday" "6" "September" "2016" "11:47:52" "+0200" "Andreas Stieger" "astieger@suse.com" "<91298704-08e0-71ec-7839-b0aeb7978c68@suse.com>" "75" "Re: [oss-security] CVE request: Linux kernel mbcache lock contention denial of service." nil nil nil "9" "2016090609:47:52" "[oss-security] CVE request: Linux kernel mbcache lock contention denial of service." (number mark "U       astieger@sus Sep  6   75/2597  " thread-indent "\"Re: [oss-security] CVE request: Linux kernel mbcache lock contention denial of service.\"\n") "<20160905135748.GA11745@kroah.com>" ("<CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>" "<20160905135748.GA11745@kroah.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 22466 invoked by uid 550); 6 Sep 2016 09:48:37 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22442 invoked from network); 6 Sep 2016 09:48:36 -0000
To: oss-security@lists.openwall.com
References: <CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>
 <20160905135748.GA11745@kroah.com>
From: Andreas Stieger <astieger@suse.com>
Organization: SUSE Linux GmbH
Message-ID: <91298704-08e0-71ec-7839-b0aeb7978c68@suse.com>
Date: Tue, 6 Sep 2016 11:47:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20160905135748.GA11745@kroah.com>
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="xVijsLVBnQBoNT89BUvfmAcF7E3xUspnL"
Subject: Re: [oss-security] CVE request: Linux kernel mbcache lock contention
 denial of service.

--xVijsLVBnQBoNT89BUvfmAcF7E3xUspnL
Content-Type: multipart/mixed; boundary="B6ScXcxQHEe3wpEEvPCFhRgxBdmrfOEAd";
 protected-headers="v1"
From: Andreas Stieger <astieger@suse.com>
To: oss-security@lists.openwall.com
Message-ID: <91298704-08e0-71ec-7839-b0aeb7978c68@suse.com>
Subject: Re: [oss-security] CVE request: Linux kernel mbcache lock contention
 denial of service.
References: <CALJHwhSmb-Fx6VYaqW4FwNg=GTm=q2d7LqqoZ10U5TjA1=nTOA@mail.gmail.com>
 <20160905135748.GA11745@kroah.com>
In-Reply-To: <20160905135748.GA11745@kroah.com>

--B6ScXcxQHEe3wpEEvPCFhRgxBdmrfOEAd
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 09/05/2016 03:57 PM, Greg KH wrote:
> On Mon, Aug 22, 2016 at 03:28:51PM +1000, Wade Mealing wrote:
>> [...]
>> Upstream has replaced the mbcache code with an updated version which
>> was not a patch but a clear-cut reimplementation of the code, no
>> single diff
>> [...]
>>  =B1  git tag --contains be0726d33cb8f411945884664924bed3cb8c70ee
>> v4.6
> That commit is for only the ext2 filesystem, how would it fix an issue
> in ext4?


commit f9a61eb4e2471c56a63cd804c7474128138c38ac
mbcache2: reimplement mbcache

commit 82939d7999dfc1f1998c4b1c12e2f19edbdff272
ext4: convert to mbcache2

commit be0726d33cb8f411945884664924bed3cb8c70ee
ext2: convert to mbcache2

Andreas

--=20
Andreas Stieger <astieger@suse.com>
Project Manager Security
SUSE Linux GmbH, GF: Felix Imend=F6rffer, Jane Smithard, Graham Norton,
HRB 21284 (AG N=FCrnberg)



--B6ScXcxQHEe3wpEEvPCFhRgxBdmrfOEAd--

--xVijsLVBnQBoNT89BUvfmAcF7E3xUspnL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCgAGBQJXzpDPAAoJECzWqVXhWUVGimsQALGJLs2hPAtsuJi+MoFgNDKU
l14kaVU4FEB5Creb2VcHVGGtpuT5ztTbNEbmSg4UhXNP16kdCHHM00zUWe0nP0J3
kfpn0qc1RT++tHomltQmj1nM5lY428PZcAAFW/S1m/XsU+cBlSlv2OH+CYAY/PTY
pRrUb+sTeoE5nO5wkgTqkYfewL+b6CEhJIVgKP/wlAy83d785xkvl77cH+dY4MsU
KO3YJccRKdlN0Y5cH1hGEk8Xg+L3NiZjn7mcFMTGtO+Ma7EcIdOmaIo5GEFMK7We
Qbi7SSlwV9qaku6+jclYbhyT1X78JYtCexeD9drwQClytVvkS3Oiese364kszpgX
nSv3yIPx7LEuCXCOMF4BtYFfT09drnMVlI3rKZ53dqAd8e8E2Qs82zdMOzX5RvrF
ws4RuV2J2tm7Aw2tVUYl+3NPfDhWt3ZqAyN9SKRZVkDfwrgwNNo6w6qxeNlW7H/p
sYNkySB2obSefbPJofLtg8CNcrTuLgSjCsgmVJInxP2esTApMI1rZ0AgQU3X5u+C
fusQrApKj3ScSBJDuZ18kvt7AZfJOZQq5dINL9YZOEJa04ka6dMB27L4cWUYpRxZ
hYPC/AH38MTJXlE0MChO6xoq802lGlmdAg4Dbcd46wi37Bubeht41GfSqVyauBx+
JSEqYBQ7lU6AfhF4rcCa
=NtSv
-----END PGP SIGNATURE-----

--xVijsLVBnQBoNT89BUvfmAcF7E3xUspnL--
