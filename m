Received: (qmail 28446 invoked by uid 550); 5 Oct 2022 16:46:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13521 invoked from network); 5 Oct 2022 16:29:24 -0000
ARC-Filter: OpenARC Filter v1.0.0 mx.pao1.isc.org 9F01F3AB00D
Authentication-Results: mx.pao1.isc.org; arc=none smtp.remote-ip=149.20.1.12
ARC-Seal: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1664987351; cv=none; b=YV2hI9Zt+GrSj3vC9GZ2Sc8wFu2Ox72TlKZjxrqOmA6lUXxrXRKOxQccZvx873mBczKwPfw9cX1JcXoQwZfQUpAgn+Ruy0x0Aritv271zfAlcayam33cChhCy4v05gyYqJQn1DNTXKO5eZy6vikxtXsajW/DCvWDSV4KsdVmUxc=
ARC-Message-Signature: i=1; a=rsa-sha256; d=isc.org; s=ostpay; t=1664987351;
	c=relaxed/relaxed; bh=yoYbN44PYtVaC5k/fhGGHHkUkFfGy5Jzk9E3XKjedaI=;
	h=DKIM-Signature:DKIM-Signature:Message-ID:Date:MIME-Version:To:
	 From:Subject; b=pzq2iUC4PK01q7EW520tdBf1cQMNaO0at7fRZAkwn5VNlyS1pWdPCQXhLNrUpOhgaUAHZpqs4hXOe0Nu3uYHgZ36W0h/yHNDB19lCjs4B960D51fkfGR12h9N92+y8Zs3vPb0Fx7TjhcvPrlc0Ny5QV7ZRJQDJN3EnDEDFyT65g=
ARC-Authentication-Results: i=1; mx.pao1.isc.org
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.pao1.isc.org 9F01F3AB00D
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=isc.org; s=ostpay;
	t=1664987351; bh=iieioxIzIZnirTU4dSW5kxyVos0SmPChhbSabIkUsN4=;
	h=Date:To:From:Subject;
	b=n6DWToIJck49/g1FzAQeTT1l3rjQuqhmZBbmc9FxGcn30l4twLDUXW2k2jUh8VjLs
	 8SYeTbnWDp1IMajI9bXgzj8123rpLudrN0Anirg7UvG4VBdZDSxEa0R8LuO/fuaN4t
	 7jItIRfDINjge9qUD1j/LX6yCifPPSianQKBouzE=
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbrang.isc.org EA486E076C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=isc.org;
	s=05DFB016-56A2-11EB-AEC0-15368D323330; t=1664987350;
	bh=yoYbN44PYtVaC5k/fhGGHHkUkFfGy5Jzk9E3XKjedaI=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=Bb1UEnOIkpYyKxz7g0j8Pz0ovCPeQfuqmQWjsfWyG9TI279rB07VrnpJlpYZGiI5N
	 Sjht4ilNHCzsNEXkKYRqDgz6r1pTbOqccVr5uz85Y22ATAUwqum/LuygH3Cev0sHxN
	 qByxDEDHt/niRfuRgmfnVFYVCwAsDa3WdBnKaodo=
Content-Type: multipart/alternative;
 boundary="------------sIl30vjmAVXIoq9mmnTdC0Py"
Message-ID: <c1168996-ea72-ad04-027f-2f3b190eabd5@isc.org>
Date: Wed, 5 Oct 2022 18:29:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.13.1
Content-Language: en-US
To: oss-security@lists.openwall.com
From: Peter Davies <peterd@isc.org>
Subject: [oss-security] ISC has disclosed two vulnerabilities in ISC DHCP (CVE-2022-2928,
 CVE-2022-2929)

--------------sIl30vjmAVXIoq9mmnTdC0Py
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5 October 2022 we (Internet Systems Consortium) disclosed two 
vulnerabilities affecting our ISC DHCP software:

- CVE-2022-2928 An option refcount overflow exists in dhcpd
- CVE-2022-2929 DHCP memory leak


New versions of ISC DHCP are available from https://www.isc.org/downloads

Operators and package maintainers who prefer to apply patches 
selectively can find individual vulnerability-specific patches in the 
"patches" subdirectory of the release directories for our stable release 
branches (4.4.3-P1 and 4.1-R16-P2):

- https://downloads.isc.org/isc/dhcp/4.4.3-P1/patches/
- https://downloads.isc.org/isc/dhcp/4.1-ESV-R16-P2/patches/

With the public announcement of these vulnerabilities, the embargo 
period is ended and any updated software packages that have been 
prepared may be released.

ISC Support
----
--------------sIl30vjmAVXIoq9mmnTdC0Py--
