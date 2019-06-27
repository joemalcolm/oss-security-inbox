X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2162" "Thursday" "27" "June" "2019" "19:56:45" "+0100" "John Haxby" "john.haxby@oracle.com" "<CE800BE0-7398-4ABA-9980-ABC97A6EB67D@oracle.com>" "46" "Re: [oss-security] linux-distros membership application - Microsoft" "^Date:" nil nil "6" "2019062718:56:45" "[oss-security] linux-distros membership application - Microsoft" (number mark "        john.haxby@o Jun 27   46/2162  " thread-indent "\"Re: [oss-security] linux-distros membership application - Microsoft\"\n") "<20190627174858.GD25142@elm>" ("<20190626141358.GK7898@sasha-vm>" "<20190627140321.GA29338@openwall.com>" "<CA+aC4kvr6o0n0aFGUk0nXmAU1d8sMPRUy8jET+fU17B6MDPskQ@mail.gmail.com>" "<20190627174858.GD25142@elm>") nil nil nil nil nil nil nil "Re: [oss-security] linux-distros membership application - Microsoft" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 1919 invoked by uid 550); 27 Jun 2019 18:57:04 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 1848 invoked from network); 27 Jun 2019 18:57:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=from : content-type :
 content-transfer-encoding : mime-version : subject : date : references :
 to : in-reply-to : message-id; s=corp-2018-07-02;
 bh=Viq/eUg5MOrnk7K/YvurVZKrQXbFlkZ8oI84HjmANss=;
 b=4RIxFEu2Mlq/dkcX/dhsXHb4CGUjGcYmP2piYsQO+u1ZypON8zskdLsdfVAoP4fhyzAn
 4TU/EauXOo61oSV1HMy+Bw1Oqc9YIF+9Sgzw1EdNl2HIjPscAKPv7sxIb8JB+NRs1WkH
 +kWUI6SJ5d3SJ0vxT15yKE9DveJDzUIizWbuObpbbeG9KngkVVNJRAZ/GLbAF/Y8ZHb3
 FBvCXs6zBa7FMfz/qstEF0XuFXmub522RPdtjEP/DQD7t/zoe0o3ujiIF3DjXUrqzMoJ
 x1pyDoM1F8WqUFt4UiyltLItVT/bBGwXKPwiVBFCTcWS3I+6Xhof8KQfmF8ILaDOxClO 7w== 
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
References: <20190626141358.GK7898@sasha-vm>
 <20190627140321.GA29338@openwall.com>
 <CA+aC4kvr6o0n0aFGUk0nXmAU1d8sMPRUy8jET+fU17B6MDPskQ@mail.gmail.com>
 <20190627174858.GD25142@elm>
In-Reply-To: <20190627174858.GD25142@elm>
Message-Id: <CE800BE0-7398-4ABA-9980-ABC97A6EB67D@oracle.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1906270215
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9301 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1034
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1906270215
Date: Thu, 27 Jun 2019 19:56:45 +0100
From: John Haxby <john.haxby@oracle.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] linux-distros membership application - Microsoft
To: oss-security@lists.openwall.com



> On 27 Jun 2019, at 18:48, Tyler Hicks <tyhicks@canonical.com> wrote:
>=20
> On 2019-06-27 09:57:38, Anthony Liguori wrote:
>> On Thu, Jun 27, 2019 at 7:05 AM Solar Designer <solar@openwall.com> wrot=
e:
>>>>> 3. Have a publicly verifiable track record, dating back at least 1
>>>>> year and continuing to present day, of fixing security issues
>>>>> (including some that had been handled on (linux-)distros, meaning that
>>>>> membership would have been relevant to you) and releasing the fixes
>>>>> within 10 days (and preferably much less than that) of the issues
>>>>> being made public (if it takes you ages to fix an issue, your users
>>>>> wouldn't substantially benefit from the additional time, often around
>>>>> 7 days and sometimes up to 14 days, that list membership could give
>>>>> you).
>>>>=20
>>>> Microsoft has decades long history of addressing security issues via
>>>> MSRC (https://www.microsoft.com/en-us/msrc). While we are able to
>>>> quickly (<1-2 hours) create a build to address disclosed security
>>>> issues, we require extensive testing and validation before we make the=
se
>>>> builds public. Being members of this mailing list would provide us the
>>>> additional time we need for extensive testing.
>>>=20
>>> It'd be helpful if you could directly address this part: "including some
>>> that had been handled on (linux-)distros, meaning that membership would
>>> have been relevant to you".  Without such examples yet, we'd have to be
>>> guessing whether the membership would have been relevant to you or not.
>>=20
>> I'm not aware of issues on the distros list, but Microsoft has been
>> very active in working with the broader community on Spectre/Meltdown
>> style mitigations.  I think the community would benefit overall from
>> their participation on distros.
>=20
> I agree with Anthony on this point. They've been beneficial to the
> greater Linux community and I feel like their direct involvement on
> linux-distros would benefit other members.
>=20
> Tyler


I know this is "me too" but I agree with both Anthony and Tyler.  I'd also =
endorse Sasha personally from my association with him in the past.

jch=
