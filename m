X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1358" "Tuesday" "20" "October" "2015" "01:37:04" "-0400" "Daniel Kahn Gillmor" "dkg@fifthhorseman.net" "<8737x6je2n.fsf@alice.fifthhorseman.net>" "33" "Re: [oss-security] Prime example of a can of worms" nil nil nil "10" "2015102005:37:04" "[oss-security] Prime example of a can of worms" (number mark "        dkg@fifthhor Oct 20   33/1358  " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 27826 invoked by uid 550); 20 Oct 2015 05:37:20 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 27808 invoked from network); 20 Oct 2015 05:37:20 -0000
In-Reply-To: <CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com> <CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com> <20151019193411.GA15710@hunt> <87eggqmta9.fsf@alice.fifthhorseman.net> <CANO=Ty2ffi_iLEzRzX4rBi-7xLg8p8BmbfxZZVPZdh1ORmPFsw@mail.gmail.com>
User-Agent: Notmuch/0.20.2 (http://notmuchmail.org) Emacs/24.5.1 (x86_64-pc-linux-gnu)
Message-ID: <8737x6je2n.fsf@alice.fifthhorseman.net>
MIME-Version: 1.0
Content-Type: text/plain
Cc: Seth Arnold <seth.arnold@canonical.com>
Date: Tue, 20 Oct 2015 01:37:04 -0400
From: Daniel Kahn Gillmor <dkg@fifthhorseman.net>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Kurt Seifried <kseifried@redhat.com>, oss-security <oss-security@lists.openwall.com>

On Tue 2015-10-20 00:16:19 -0400, Kurt Seifried wrote:
> So it occurs to me that we have no corpus of data on Diffie Helman primes.
> With this in mind I would like to create one. Openssl command line can
> easily create them, using either the 2 (default) or 5 generator (explained
> at
> http://security.stackexchange.com/questions/54359/what-is-the-difference-between-diffie-hellman-generator-2-and-5
> )
>
> For example the following code:
>
> #!/bin/bash
> for i in `seq 1 100`;
> do
>     openssl dhparam 2048 -text >> $i
> done
>
> will generate 100 2048 bit primes. If you can ideally simply commit the
> files to the following github repo:
>
> https://github.com/RedHatProductSecurity/Diffie-Hellman-Primes/
>
> simply create a directory in the root with your name/whatever you want to
> call it (nothing rude please) and have a "2048" directory for the 2048 bit
> primes and a "4096" directory for the 4096 bit primes I would appreciate
> it. If you use a tool other than OpenSSL command line to generate the
> primes please make a note of it (especially any command line options used)
> in a .txt file in the root of your data directory. My goal is to collect a
> few million primes of each size so we have some real data to work with.

What's the goal of this proposed corpus?  What sort of experiments are
you imagining running?

          --dkg
