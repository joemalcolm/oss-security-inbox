X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1064" "Wednesday" "1" "December" "2021" "18:37:27" "+0100" "Kai Engert" "kaie@kuix.de" nil "24" "[oss-security] Re: CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures" nil nil nil "12" nil nil (number mark "U       kaie@kuix.de Dec  1   24/1064  " thread-indent "\"[oss-security] Re: CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] Re: CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS DER-encoded signatures" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28316 invoked by uid 550); 1 Dec 2021 17:46:05 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23670 invoked from network); 1 Dec 2021 17:37:40 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=kuix.de; s=2018;
	t=1638380248; bh=tnEEZSY5hSLeA57Rh8dgFcjPTsSpwtlZYpdZbVMV4N8=;
	h=Date:From:To:References:Subject:In-Reply-To:From;
	b=T/5YdtkT6kF/bIwIgeFJM8SIbTvPAkd5EOIGpD9FGHdYgra5ASmmEDnBm4rj9G6go
	 cjSi9ZKUFLMGLioim6431xdOukCVDG4KhAA1lnEdhYP+rBF3uppC1g4JE1xalGCIcZ
	 +PDxWpg44RZI1hVrNbmrUe0h7D36pCf9qFCJgXHZ7S7CvVw6dITm7BurHzPQXk+zF8
	 OURxheEvhYFqNrWaAMTOsGfb7kFfxI4HISMyVYbaGufYHS33K0Bni9ADzSVErlS4fk
	 ToKXMgSxnY/RuyKRcwNd3XiCi2T6g/okWE8R4n+0Pi98c2A5Os7iN8NTYo8O+ct4ys
	 PyR998JPXwQCA==
Message-ID: <b3684dd2-0215-a119-2301-8c2ad2ef957e@kuix.de>
Date: Wed, 1 Dec 2021 18:37:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Content-Language: en-US
From: Kai Engert <kaie@kuix.de>
To: oss-security@lists.openwall.com
References: <CAON8YFPiCCj4q3Z52c4dh9ArmDF2ybS_KDN1RWYe-D52fDt2qw@mail.gmail.com>
 <e5468d60-4732-2678-94b4-ff10939263c0@oracle.com>
 <CAON8YFOqmycWbhtaD0Og=J+g1S8GLv0ZxVGQhvd5_9vwhbA6BA@mail.gmail.com>
 <644f0606-b589-021e-ddd7-dc57e54c327f@kuix.de>
In-Reply-To: <644f0606-b589-021e-ddd7-dc57e54c327f@kuix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: [oss-security] Re: CVE-2021-43527: Heap overflow in NSS when verifying DSA/RSA-PSS
 DER-encoded signatures

>> https://bugs.chromium.org/p/project-zero/issues/detail?id=2237 states that
>> "It's been 30 days since the initial thunderbird patches have been released".
>>
>> Is there a corresponding Thunderbird patch/advisory/release distros should be
>> shipping as well?

Thunderbird 91.3.0 had shipped a workaround, that should protect against 
the most risky attack vector (executing the vulnerable code path when 
importing certificates contained in a received S/MIME message).

The workaround commits are here:
https://hg.mozilla.org/releases/comm-esr91/rev/54507526da82
https://hg.mozilla.org/releases/comm-esr91/rev/bea1eb4e98a3

We intend to add a separate CVE to the corresponding tracking bug
https://bugzilla.mozilla.org/show_bug.cgi?id=1738501
and also amend the release notes of the 91.3.0 release.

In addition, to ensure that potential secondary attack vectors will be 
protected as well, it is recommended that Thunderbird uses NSS binaries 
that contain the NSS level patch. The Thunderbird team will ship NSS 
3.68.1 in the upcoming 91.4.0 release.

Kai
