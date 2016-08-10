X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["888" "Wednesday" "10" "August" "2016" "15:00:09" "-0400" "CAI Qian" "caiqian@redhat.com" "<739916702.1278914.1470855609597.JavaMail.zimbra@redhat.com>" "27" "Re: [oss-security] cve request: systemd-machined: information exposure for docker containers" "^Date:" nil nil "8" "2016081019:00:09" "[oss-security] cve request: systemd-machined: information exposure for docker containers" (number mark "        caiqian@redh Aug 10   27/888   " thread-indent "\"Re: [oss-security] cve request: systemd-machined: information exposure for docker containers\"\n") "<f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>" ("<1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com>" "<20160727200021.GB3330@motoko>" "<B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust>" "<CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com>" "<4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com>" "<20160728144249.GB23522@perpetual.pseudorandom.co.uk>" "<291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me>" "<f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23741 invoked by uid 550); 10 Aug 2016 19:00:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23723 invoked from network); 10 Aug 2016 19:00:21 -0000
Message-ID: <739916702.1278914.1470855609597.JavaMail.zimbra@redhat.com>
In-Reply-To: <f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>
References: <1304293369.8684866.1469539505676.JavaMail.zimbra@redhat.com> <20160727200021.GB3330@motoko> <B760F07C-908F-431A-8BCE-A3AE9E93E33F@nccgroup.trust> <CAEk6tEx0JRNX9q0k8JH2PNkGJO59WVVMhh4=3DkoQFMNkqY9LA@mail.gmail.com> <4b0070a9-e8c3-ac69-a410-2269d9d08b71@redhat.com> <20160728144249.GB23522@perpetual.pseudorandom.co.uk> <291B6ECE-2D59-435D-A986-4582022C9B21@shiz.me> <f6c1ae32-c8fa-96f2-a300-87fd0accd6fe@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.18.41.13]
X-Mailer: Zimbra 8.0.6_GA_5922 (ZimbraWebClient - GC45 (Linux)/8.0.6_GA_5922)
Thread-Topic: cve request: systemd-machined: information exposure for docker containers
Thread-Index: ZCeajIzJjcBZXnQDHD1X7Jn0W5jIBQ==
Date: Wed, 10 Aug 2016 15:00:09 -0400 (EDT)
From: CAI Qian <caiqian@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] cve request: systemd-machined: information
 exposure for docker containers
To: oss-security@lists.openwall.com



----- Original Message -----
> From: "Daniel J Walsh" <dwalsh@redhat.com>
> To: oss-security@lists.openwall.com
> Sent: Wednesday, August 3, 2016 3:27:00 AM
> Subject: Re: [oss-security] cve request: systemd-machined: information exposure for docker containers
> 
> 
> 
> On 08/01/2016 12:24 PM, Shiz wrote:
> >> On 28 Jul 2016, at 16:42, Simon McVittie <smcv@debian.org> wrote:
> >>
> >> *Which* unprivileged user processes?
> >>
> >> If the unprivileged user processes are not in a container, they can get a
> >> significant amount of the same information by reading the host's /proc.
> > Except if a host is running with hidepid={1,2}, which is not entirely
> > uncommon
> > especially in hardened systems. In that regard it /does/ qualify as
> > infoleak.
> >
> > - Shiz
> Then simply rpm -e oci-register-machine
> 
Except people can't do that in OSes like atomic host.
   CAI Qian
