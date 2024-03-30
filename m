Received: (qmail 28041 invoked by uid 550); 30 Mar 2024 13:36:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15416 invoked from network); 30 Mar 2024 13:30:54 -0000
ARC-Seal: i=1; a=rsa-sha256; t=1711805444; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Dmtd5s6kWjYf8gmS6sbyiKjOIzNyFhDj3D7bPvjpA0mubUWj0nHX04wOUwPfcg4SRXatLFj5i0XuBOi5ssfwuUoIcwwC53vm7jwt+omjUVXrgBkIFcmGmLhuKxhZkDTdQq7DJj72pvuB77kt8a9yMpOKnU6jJTKt9qhRxNDVnaU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1711805444; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=hrP+qF3L6adCbO8SYpCo4XcodKpNSuhnJv36+l3eZgY=; 
	b=g7kNq0Us3rDk2CjAtiAxMowpecdM8zYMEOMZM5Vq7DEqRYSK+aVIPIKSQGKxbTeTTEn+9q05Z7PSICUhGcPPpIXgM6TRAGhhgSc9UoEf8zarXwycnDuH6aqSyRAD+WsG+OW/sqZ0BzpOH8zs7N+hj3RDLk03XPxo5KQhMSlYOQ8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=boanderson.me;
	spf=pass  smtp.mailfrom=mail@boanderson.me;
	dmarc=pass header.from=<mail@boanderson.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1711805444;
	s=zoho; d=boanderson.me; i=mail@boanderson.me;
	h=From:From:Content-Type:Content-Transfer-Encoding:Mime-Version:Subject:Subject:Date:Date:References:To:To:In-Reply-To:Message-Id:Message-Id:Reply-To:Cc;
	bh=hrP+qF3L6adCbO8SYpCo4XcodKpNSuhnJv36+l3eZgY=;
	b=RyBOxtOGsrx92VnmnR14xZsTk6wSqjs4H5t9sxfuRMbpJXDXw8ZDfQtyF1MtGr5t
	GLFQtz8UTTeiNtWT7txXgPKRyNLcKikm/+OCExRwP0SYa3leMFvfN77Klcwztoo1CQS
	3ifMwqBH8JghcdxXb9JZMOWpb3kj4YExnxUBSwDg=
From: Bo Anderson <mail@boanderson.me>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3774.500.171.1.1\))
Date: Sat, 30 Mar 2024 13:30:28 +0000
References: <20240329155126.kjjfduxw2yrlxgzm@awork3.anarazel.de>
 <uu76c4$u7g$1@ciao.gmane.io> <20240329211052.GA2470@openwall.com>
 <uu7da3$87n$1@ciao.gmane.io>
 <20240329221938.dqit6xuh4es2v6gc@awork3.anarazel.de>
 <uu7g5q$8hl$1@ciao.gmane.io> <01322afdcf6b4dd7b81452dc5afed6b1@amazon.com>
 <6038e843-fc3f-4c51-a48c-feb283242b41@canonical.com>
 <uu7k2m$61a$1@ciao.gmane.io>
 <4f2d978b-e94d-44c1-b6d1-d4c18c9d9eb0@canonical.com>
 <uu7uid$4ig$1@ciao.gmane.io>
To: oss-security@lists.openwall.com
In-Reply-To: <uu7uid$4ig$1@ciao.gmane.io>
Message-Id: <97E4F613-4AE1-4113-8429-F6A66F566DD3@boanderson.me>
X-Mailer: Apple Mail (2.3774.500.171.1.1)
X-ZohoMailClient: External
Subject: Re: [oss-security] backdoor in upstream xz/liblzma leading to ssh
 server compromise

> On 30 Mar 2024, at 02:48, Tavis Ormandy <taviso@gmail.com> wrote:
>=20
> Yeah, you're making big decisions for a lot of people here.
>=20
> If your organization was not on the list and got compromised during the
> embargo, do you think you would be thanking everyone for delaying your
> response?

I think this is a good point to keep in mind.

In this case, I think things were dealt with ok. We believe the main target=
 was deb/rpm builds and those people were given some notice about the situa=
tion.

However in the wider sense of malware and potentially certain 0-days, it is=
 important to remember distros@ is absolutely not the only people that need=
 to know about some of these things.

For example, distros@ excludes package managers on macOS and Windows. To pi=
ck out one to demonstrate, xz 5.6.1 on Homebrew received over 1.5 million d=
ownloads by the time it was pulled (of which at least 20% of that was defin=
itely installed). It is very fortunate that we believe the scope was limite=
d to Linux.

And even when you escape the package manager world, there are many people w=
ho incorporate these dependencies as a part of their own builds. Redistribu=
tion of libraries with software (both shared and static) is quite common ou=
tside of the Linux sphere.

Bo

