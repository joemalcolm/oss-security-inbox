X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["5663" "Wednesday" "9" "August" "2017" "07:44:43" "+0200" "Evy Bongers" "lists+oss-sec@evybongers.nl" "<20170809054443.GA9795@evybongers.nl>" "181" "[oss-security] CVE-2017-12425: Varnish HTTP Cache 4.0.1 to 5.1.2 DoS vulnerability" nil nil nil "8" "2017080905:44:43" "[oss-security] CVE-2017-12425: Varnish HTTP Cache 4.0.1 to 5.1.2 DoS vulnerability" (number mark "U       lists+oss-se Aug  9  181/5663  " thread-indent "\"[oss-security] CVE-2017-12425: Varnish HTTP Cache 4.0.1 to 5.1.2 DoS vulnerability\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13661 invoked by uid 550); 9 Aug 2017 12:00:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23873 invoked from network); 9 Aug 2017 05:44:55 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=evybongers.nl; s=mail;
	t=1502257484; bh=zjQn8+VxJiytzxbIA+7+n9NFqTQrr+iLpYLreF4biRM=;
	h=Date:From:To:Subject:From;
	b=et/yDCLQLaVu3vHf0A23TvF0kdn9P/ZVVl983HSsMPS4TFPTksqm1Y0B/10bMuPc6
	 ti19/nDB0tcRpWh5gcx0xfcy8D9XUle8w8qNw/B4ngIb6d3vjt4Ud3YFjtQwtHYJP3
	 SO7JF3MSMoLUY4AKWqHJmXQSBvau4FV5lWvHrJLA=
Date: Wed, 9 Aug 2017 07:44:43 +0200
From: Evy Bongers <lists+oss-sec@evybongers.nl>
To: oss-security@lists.openwall.com
Message-ID: <20170809054443.GA9795@evybongers.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [oss-security] CVE-2017-12425: Varnish HTTP Cache 4.0.1 to 5.1.2 DoS vulnerability

I came across this CVE yesterday and hadn't seen it on the list yet.
Contents of this mail are copied from the post on varnish-cache.org.[1]

[CVE-2017-12425] VSV00001 DoS vulnerability

Date: 2017-08-02

A wrong if statement in the varnishd source code means that particular
invalid requests from the client can trigger an assert.

This causes the varnishd worker process to abort and restart, loosing
the cached contents in the process.

An attacker can therefore crash the varnishd worker process on demand
and effectively keep it from serving content - a Denial-of-Service
attack.

Mitigation is possible from VCL or by updating to a fixed version of
Varnish Cache.

*Versions affected*
- 4.0.1 to 4.0.4
- 4.1.0 to 4.1.7
- 5.0.0
- 5.1.0 to 5.1.2

Users of the Varnish Cache Plus product from Varnish Software: See the
email you received from V-S.

*Versions not affected*
- All releases up to and including 4.0.0

*Fixed in*
- 4.0.5 and forward
- 4.1.8 and forward
- 5.1.3 and forward

Users of the Varnish Cache Plus product from Varnish Software: See the
email you received from V-S.

*Mitigation from VCL*
Note that there are subtle differences on the VCL workarounds, depending
on which version of Varnish you are running, make sure to use the right
one.

These VCL snippets work by failing all client requests which attempt to
use Transfer-encoding: chunked.

Normally browsers will not issue such requests, but we know there are
cases where B2B applications, APIs and special webservices will use
client requests with chunked encoding.

You can use this command to see if you have client traffic with chunked
encoding:

  varnishlog -cq ReqHeader:Transfer-Encoding -i ReqMethod -i ReqURL

If you need some requests with chunked encoding to work, you will have
to write VCL code to white-list these clients based on IP/
authentication/cookies or other criteria, and then only call the
exploit_workaround_xxx function for the malicios clients.

*Varnish 4.0.x (and Varnish Cache Plus 4.0.x)*
Set the vcc_allow_inline parameter to true, either by passing:

  -pvcc_allow_inline_c=true

on the command line or by issuing the CLI command:

  param.set vcc_allow_inline_c true

Then add this to the front of your VCL:

  sub exploit_workaround_4_0 {
          # This needs to come before your vcl_recv function
          # The following code is only valid for Varnish Cache and
          # Varnish Cache Plus versions 4.0.x
          if (req.http.transfer-encoding ~ "(?i)chunked") {
                  C{
                  struct dummy_req {
                          unsigned magic;
                          int restarts;
                          int esi_level;
                          int disable_esi;
                          char hash_ignore_busy;
                          char hash_always_miss;
                          void *sp;
                          void *wrk;
                          int req_step;
                          struct {
                                  void *a;
                                  void *b;
                          };
                          int req_body_status;
                  };
                  ((struct dummy_req *)ctx->req)->req_body_status = 6;
                  }C
  
                  return (synth(503, "Bad request"));
          }
  }
  
  sub vcl_recv {
          # Call this early in your vcl_recv function
          call exploit_workaround_4_0;
  }

*Varnish 4.1.x and 5.0 (and Varnish Cache Plus 4.1.x)*
Set the vcc_allow_inline parameter to true, either by passing:

  -pvcc_allow_inline_c=true

on the command line or by issuing the CLI command:

  param.set vcc_allow_inline_c true

Then add this to the front of your VCL:

  sub exploit_workaround_4_1 {
          # This needs to come before your vcl_recv function
          # The following code is only valid for Varnish Cache and
          # Varnish Cache Plus versions 4.1.x and 5.0.0
          if (req.http.transfer-encoding ~ "(?i)chunked") {
                  C{
                  struct dummy_req {
                          unsigned magic;
                          int step;
                          int req_body_status;
                  };
                  ((struct dummy_req *)ctx->req)->req_body_status = 5;
                  }C
  
                  return (synth(503, "Bad request"));
          }
  }
  
  sub vcl_recv {
          # Call this early in your vcl_recv function
          call exploit_workaround_4_1;
  }

*Varnish 5.1.x*
Add this to the front of your VCL:

  sub vcl_recv {
          if (req.http.transfer-encoding ~ "(?i)chunked") {
                  return (fail);
          }
  }

*Source code fix*
The source code fix is this one-liner:

                  if (q == NULL || *q != '\0')
                          ERR("chunked header number syntax");
                  cl = (ssize_t)cll;
  -               if((uintmax_t)cl != cll)
  +               if (cl < 0 || (uintmax_t)cl != cll)
                          ERR("bogusly large chunk size");
  
                  *priv = cl;

On varnish 4.0.x this change goes into
bin/varnishd/cache/cache_http1_proto.c on anything later it goes into
bin/varnishd/http1/cache_http1_vfp.c.  Thankyous and credits

This issue was first noticed by StackPath.com, who contacted their
vendor, Varnish Software, who in turn notified the Varnish Cache
project.

Varnish Software staff did most of the heavy lifting, and Martin in
particular gets a hat-tip for trawling the source-code for any similar
issues.

And yes, I apologize for writing that buggy line of code.

phk

PS: See also Yah! A security issue - finally!

[1] https://varnish-cache.org/security/VSV00001.html
