X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2379" "Tuesday" "15" "March" "2016" "18:43:07" "+0300" "Solar Designer" "solar@openwall.com" "<20160315154307.GA4255@openwall.com>" "48" "Re: [oss-security] server and client side remote code execution through a buffer overflow in all git versions before 2.7.1 (unpublished cve-2016-2324 and cve-2016-2315)" "^Cc:" nil nil "3" "2016031515:43:07" "[oss-security] server and client side remote code execution through a buffer overflow in all git versions before 2.7.1 (unpublished cve-2016-2324 and cve-2016-2315)" (number mark "        solar@openwa Mar 15   48/2379  " thread-indent "\"Re: [oss-security] server and client side remote code execution through a buffer overflow in all git versions before 2.7.1 (unpublished cve-2016-2324 and cve-2016-2315)\"\n") "<bc447bb9-e653-f606-5529-598b77722513@laposte.net>" ("<discussions/26aaf01a977311e58051278c8e160af2/comments/2444280@github.com>" "<318847d0-05d4-f1e3-9e2a-e50567f82515@laposte.net>" "<20160211155031.GA8584@sigill.intra.peff.net>" "<bc447bb9-e653-f606-5529-598b77722513@laposte.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 11288 invoked by uid 550); 15 Mar 2016 15:43:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 11269 invoked from network); 15 Mar 2016 15:43:11 -0000
Message-ID: <20160315154307.GA4255@openwall.com>
References: <discussions/26aaf01a977311e58051278c8e160af2/comments/2444280@github.com> <318847d0-05d4-f1e3-9e2a-e50567f82515@laposte.net> <20160211155031.GA8584@sigill.intra.peff.net> <bc447bb9-e653-f606-5529-598b77722513@laposte.net>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <bc447bb9-e653-f606-5529-598b77722513@laposte.net>
User-Agent: Mutt/1.4.2.3i
Cc: La??l Cellier <lael.cellier@laposte.net>
Date: Tue, 15 Mar 2016 18:43:07 +0300
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] server and client side remote code execution through a buffer overflow in all git versions before 2.7.1 (unpublished cve-2016-2324 and cve-2016-2315)
To: oss-security@lists.openwall.com

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Thanks for bringing this to oss-security.

On Tue, Mar 15, 2016 at 03:55:37PM +0100, La??l Cellier wrote:
> Hello, original report describing the overflow is here 
> http://pastebin.com/UX2P2jjg

Going forward, please post the actual content directly to oss-security,
not (only) via reference.  I've attached the contents of this pastebin
to this message, so that it's properly archived.

(No idea why you had "cve" obfuscated with Unicode, but I undid that.)

Alexander

--envbJBWh7q8WU6mo
Content-Type: text/x-c; charset=us-ascii
Content-Disposition: attachment; filename="cve-2016-2315.c"

// In revision.c before https://github.com/git/git/commit/34fa79a6cde56d6d428ab0d3160cb094ebad3305
char *path_name(const struct name_path *path, const char *name) // by design, name_path->len is a 32 bits int, but this doesn't concern name
{
      const struct name_path *p;
      char *n, *m;
      int nlen = strlen(name); // the size is converted to a positive number (the correct size was allocated previously with an unsigned long). I got 705804100
      int len = nlen + 1;

      for (p = path; p; p = p->up) { //loop is skipped (except for the cve-2016-2324 case which is fixed since 2.7.1 in February 2016)
          if (p->elem_len)
              len += p->elem_len + 1;
      }
      n = xmalloc(len); // if len is negative, it will also be converted to a negative 64 bits integer *(which explains it is normally trying to allocate serveral Pb of ram most of the time)* which will be read as positive after that. // but this isn't the run case that is interesting here.
      m = n + len - (nlen + 1); // the size of m is lower than name
      strcpy(m, name); // strcpy rely on the null terminating character. The result is written in an unallocated memory from heap. This is the definition of heap overflow enabling server side remote code execution if name[] contains assembly, and have the correct size. This open the way to defeat canaries aslr, and nx combined see http://security.stackexchange.com/q/20497/36301#comment182004_20550
      for (p = path; p; p = p->up) {
          if (p->elem_len) {
              m -= p->elem_len + 1;
              memcpy(m, p->elem, p->elem_len);
              m[p->elem_len] = '/';
          }
      }
      return n;
}

--envbJBWh7q8WU6mo--
