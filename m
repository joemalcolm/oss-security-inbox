X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["307" "Friday" "3" "November" "2017" "21:42:25" "-0400" "Christos Zoulas" "christos@zoulas.com" "<20171104014225.F3F4B17FDCE@rebar.astron.com>" "9" "Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically" "^Date:" nil nil "11" "2017110401:42:25" "[oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically" (number mark "        christos@zou Nov  3    9/307   " thread-indent "\"Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically\"\n") "<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>" ("<20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 32621 invoked by uid 550); 4 Nov 2017 01:42:40 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 32600 invoked from network); 4 Nov 2017 01:42:39 -0000
In-Reply-To: <20171103181243.lwtf3a5f4zjr4pzi@matica.foolinux.mooo.com>
       from Ian Zimmerman (Nov  3, 11:12am)
Organization: Astron Software
X-Mailer: Mail User's Shell (7.2.6 beta(4.pl1)+dynamic 20000103)
Message-Id: <20171104014225.F3F4B17FDCE@rebar.astron.com>
Date: Fri, 3 Nov 2017 21:42:25 -0400
From: christos@zoulas.com (Christos Zoulas)
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: Security risk of server side text editing in general and vim.tiny specifically
To: oss-security@lists.openwall.com

On Nov 3, 11:12am, itz@very.loosely.org (Ian Zimmerman) wrote:
-- Subject: [oss-security] Re: Security risk of server side text editing in g

| How much of this (and the parallel thread of course) applies to nvi?

Nvi stores the recovery files in /var/tmp/vi.recover/ owned by the user,
mode 600.

christos
