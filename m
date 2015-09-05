X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["714" "Saturday" "5" "September" "2015" "18:49:11" "+0200" "Hector Marco-Gisbert" "hecmargi@upv.es" "<55EB1D07.2060005@upv.es>" "25" "[oss-security] CVE Request: Glibc Pointer guarding weakness" nil nil nil "9" "2015090516:49:11" "[oss-security] CVE Request: Glibc Pointer guarding weakness" (number mark "        hecmargi@upv Sep  5   25/714   " thread-indent "\"[oss-security] CVE Request: Glibc Pointer guarding weakness\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6102 invoked by uid 550); 5 Sep 2015 16:49:25 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 6079 invoked from network); 5 Sep 2015 16:49:25 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=upv.es; s=default;
	t=1441471753; bh=9F0nMObnETnQRp6dd8sSMx/nJBVQGF+qslAHG3R4NAM=;
	h=To:Cc:From:Subject:Date;
	b=iX49a41WjZCRIk5y++yiyf3ddldzgQnSOYixPg3h4cg/gTxaf1RzVR/4w2Y6hP+Ak
	 r24erExgjaKZyJCoFssOmXRe54M5xHnjYg2aMDJJCubWoIiaZOLpDROYgJHtXuBMbs
	 7NOdflZsffGoqOslPeRilF0/fDnHqAE/CckZrUaBpFFFkDXChMxheeVLk3ELafHFbl
	 n835as2kRpPScbuaWlTWZDv7OGO52VZ6zoVonzUEdZCDo+5D21J7mXYGifVeSVEub4
	 tmNKjD5cwQQBcf50FUJi062BxvCm9u6gP+LEEEf3Q4/pVdgbcVE7ZVWZqhVcLTX2/X
	 mvJ0iC0Vmo2yg==
Message-ID: <55EB1D07.2060005@upv.es>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: cve-assign@mitre.org
Date: Sat, 5 Sep 2015 18:49:11 +0200
From: Hector Marco-Gisbert <hecmargi@upv.es>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE Request: Glibc Pointer guarding weakness
To: oss-security@lists.openwall.com

Hello,

A weakness in the dynamic loader have been found, Glibc prior to 2.22.90 
are affected. The issue is that the LD_POINTER_GUARD in the environment 
is not sanitized allowing local attackers easily to bypass the pointer 
guarding protection on set-user-ID and set-group-ID programs.


Details and PoC at:
http://hmarco.org/bugs/glibc_ptr_mangle_weakness.html


A patch is already sent to Glibc maintainers. This issue is similar to 
http://hmarco.org/bugs/CVE-2013-4788.html but now affect to dynamic 
linked applications.


Could you please assign a CVE ?



-- 
Hector Marco-Gisbert @ http://hmarco.org/
Cyber Security Researcher @ http://cybersecurity.upv.es
Universitat Politècnica de València (Spain)
