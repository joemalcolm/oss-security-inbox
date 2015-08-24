X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["879" "Monday" "24" "August" "2015" "21:50:00" "+0200" "Florian Weimer" "fweimer@redhat.com" "<55DB7568.5000601@redhat.com>" "21" "Re: [oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" nil nil nil "8" "2015082419:50:00" "[oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification" (number mark "        fweimer@redh Aug 24   21/879   " thread-indent "\"Re: [oss-security] CVE request: uglify-js node.js module <2.4.24 incorrectly handles non-boolean comparisons during minification\"\n") "<CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>" ("<CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11730 invoked by uid 550); 24 Aug 2015 19:50:15 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11703 invoked from network); 24 Aug 2015 19:50:14 -0000
References: <CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>
Message-ID: <55DB7568.5000601@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CALPTtNXiS0jqswCaH2z59oAAsOmAWZBaKcGEtOc8cGGUM9yd=Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Mon, 24 Aug 2015 21:50:00 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: uglify-js node.js module <2.4.24
 incorrectly handles non-boolean comparisons during minification
To: oss-security@lists.openwall.com

On 08/24/2015 08:26 PM, Reed Loden wrote:
> As seen on Hacker News -- https://zyan.scripts.mit.edu/blog/backdooring-js/
> 
> Blog post has all the details, but basically the UglifyJS node module has a
> problem where the combination of De Morgan’s Law and non-boolean values can
> lead to a case where code is incorrectly minified, which can lead to
> possibly malicious minified JS code.
> 
> UglifyJS is a "JavaScript parser / mangler / compressor / beautifier
> toolkit" for Node.js.

How is this different from a any other compiler bug?  They can be abused
in similar ways by crafted code, and we don't treat them as
vulnerabilities (unless there is actual application impact beyond
synthetic test cases).

Note that I'm not saying this isn't a nice find, I'm just not sure if it
should be considered as a security by itself.

-- 
Florian Weimer / Red Hat Product Security
