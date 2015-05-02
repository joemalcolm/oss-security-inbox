X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3193" "Friday" "1" "May" "2015" "19:40:51" "-0700" "Lyndon Nerenberg" "lyndon@orthanc.ca" "<E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>" "72" "Re: [oss-security] On sanctioned MITMs" nil nil nil "5" "2015050202:40:51" "[oss-security] On sanctioned MITMs" (number mark "        lyndon@ortha May  1   72/3193  " thread-indent "\"Re: [oss-security] On sanctioned MITMs\"\n") "<20150501233935.GB18039@zoho.com>" ("<20150501191522.GA18039@zoho.com>" "<5543DDB5.7030900@redhat.com>" "<20150501233935.GB18039@zoho.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 30681 invoked by uid 550); 2 May 2015 02:41:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 30654 invoked from network); 2 May 2015 02:41:06 -0000
Content-Type: multipart/signed; boundary="Apple-Mail=_073EBFE4-B208-49E5-9A75-383D82E8FD0B"; protocol="application/pgp-signature"; micalg=pgp-sha1
Message-Id: <E1868BE4-F7FC-406B-8DBD-4720F7F67A1F@orthanc.ca>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
References: <20150501191522.GA18039@zoho.com> <5543DDB5.7030900@redhat.com> <20150501233935.GB18039@zoho.com>
In-Reply-To: <20150501233935.GB18039@zoho.com>
X-Mailer: Apple Mail (2.1878.6)
Date: Fri, 1 May 2015 19:40:51 -0700
From: Lyndon Nerenberg <lyndon@orthanc.ca>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] On sanctioned MITMs
To: oss-security@lists.openwall.com

--Apple-Mail=_073EBFE4-B208-49E5-9A75-383D82E8FD0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

>> On 05/01/2015 01:15 PM, mancha wrote:
>>> Though Hushmail email credentials, for example, can't be sniffed in
>>> the segment connecting the client to CloudFlare, they are available
>>> to CloudFlare's infrastucture. Moreoever, there is no way for the
>>> client to verify that the segment connecting CloudFlare to the
>>> destination server is similarly encrypted (i.e. it might be in the
>>> clear as would be the case when using CloudFlare's "Flexible SSL"
>>> product).=20=20
>>>=20
>>> Hushmail's CloudFlare usage serves as an example that brings me to
>>> my general point.
>>>=20
>>> How should the security community view this growing use of
>>> sanctioned MITM in light of the ever-increasing amount of sensitive
>>> content sent over SSL/TLS encrypted channels (e.g. email, electronic
>>> banking, medical records, etc.)?

But also ask why they might use it.  E.g., in the presence of a DDOS attack=
, many companies rely on infrastructure such as what Cloudflare provides in=
 order to keep their services running.  By their nature, those mitigation s=
ervices have to bust the SSL pipe to do what they do.

What I am not hearing anywhere in this conversation is a proposal for how C=
loudflare can provide the service they do, but in a manner that doesn't req=
uire busting the SSL pipe in the middle.  There are MANY people begging for=
 an answer to that.  Do you have it?  If not, are you prepared to see the s=
ervices you "need" go offline when someone decides to DDOS the provider?

That's not a rhetorical question.  For some people, the answer is 'yes'.  B=
ut for most, it is 'no'.

In the specific Hushmail example, would it alleviate peoples concerns if th=
e Cloudflare MITM-busting behaviour took place entirely inside Canada?  If =
not, how do you propose an alternative?  And what, exactly, is the attack v=
ector you are trying to close down?  Is it the only one?  How do they inter=
act?

--lyndon



--Apple-Mail=_073EBFE4-B208-49E5-9A75-383D82E8FD0B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----

iQIcBAEBAgAGBQJVRDkzAAoJEG8PnXiV/JnUqnoP/1/LMHW/AZlfVsfcVprwNPYe
aOEnxZZ1NZ5ghglLKSJzcu7y108qcDJNxQ27NdHm6BY74EQufMgNWDoOD+yE5v9Q
Xairtvltd34jkAvGqd1vvumXpj986QWR07+GJCYq8qT1HXGhcmsqT833GO2InXy/
EYhOX3+P9pgZ7cIr/5B6LJDLcCybjfk6VRKl7vdMod2RZIKbpjF/QXFTrdBW4GrZ
tSysXvy7+Gcw/hcIoaU9AHawmfJz0EVGat+fnH/oEaC1qzwlFiVoSPLwEo6M6ocU
4kxSShmiQYxyU0woaz17lCNCUK1wQPB5+wUgzpHJPYTL5BuIlYWOGZFtBQCKn9sL
ioL1x0XEL0ggQ9D68TBVLStZAiCLCsQ0Hy2VuNTHGl0F4PG8qmEj1U+PUv38YX8k
LOESeQw4ibaxGN+k50IWv40S0XZpq03ygJZUbzTNg7JynNGq1XDL/lRiM3kzy8Ng
Ygc/BinpVdOwpgf7p1ScVq5vABrVPVVrcGj3drrXYjpYTRMqhmtPKk+05W3zVZHf
BgD22RQNMEq5e7ucBe+DIFBK3OyP30uLEnMkjkFBmdMjchSgpKvQXDUEBmUS7D1S
YaDvIBi3bgyFRrcGBKT3KA1AUKqPQwUCZzzJcNIP53sWwm6UI64+/T+Ikg+Os9Wk
XpLLEBW7nsWzYfrbNBhY
=iaMG
-----END PGP SIGNATURE-----

--Apple-Mail=_073EBFE4-B208-49E5-9A75-383D82E8FD0B--
