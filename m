X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/2
Message-ID: <87jyoqf0mx.fsf@gentoo.org>
Date: Sun, 13 Sep 2026 01:36:22 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Re: UnrealIRCd 6.2.7 released & hot-patch to fix security issues for existing installations
Content-Type: text/plain; charset=utf-8

Sam James <sam@...too.org> writes:

> <#secure method=pgpmime mode=sign>
> Neither Websockets nor JSON-RPC are enabled by default.

When reviewing the commits in this release, I noticed an unrelated
change in https://github.com/unrealircd/unrealircd/commit/072558bc1a539e9936584647df51fb1797c982b0.

It's a great example of the shape of many LLM-reported (I'm assuming)
vulnerabilities:

"""
Fix uninteresting MITM command injection in STARTTLS upgrade in S2S.
This initially sounded interesting but turned out to be quite
unspectacular. Here's the explanation:

1) This only applies to plaintext server links, something that is
   not standard practice for many years. Every decent server uses
   link::outgoing::options tls, which is TLS direct without STARTTLS.
2) In UnrealIRCd we automatically upgrade plaintext connections
   through STARTTLS.
3) A classic STARTTLS mistake/attack is smuggling some commands at
   the same time as the STARTTLS command/reply. We protect against this
   on one side of the link, but not the other. This is the bug.
4) For this an attacker need to be in the network path (eg a router)
   between the two servers and hijack the TCP/IP connection
5) Even then, the only effect is that an attacker could execute
   pre-auth commands, so not server commands, but only things like
   PASS, SERVER, PROTOCTL in this case.
6) So the only thing an attacker can do are things like injecting
   PROTOCTL lines to confuse server capabilities, or sending
   PASS/SERVER that will cause the link to be rejected.

So, pretty much totally uninteresting, but it is a bug :)
"""

It reflects the experience I've had with these. They're generally good
at finding real bugs but not always so much at assessing the impact or
understanding them in context.

And kudos to syzop for explaining it well.

>
> -------------------- Start of forwarded message --------------------
> Date: Sat, 12 Sep 2026 15:41:14 +0200
> Subject: UnrealIRCd 6.2.7 released & hot-patch to fix security issues for
>  existing installations
> To: UnrealIRCd Release Announcements <unreal-notify@...ts.sourceforge.net>
> From: Bram Matthys via Unreal-notify <unreal-notify@...ts.sourceforge.net>
>
> <#multipart type=mixed>
> <#multipart type=alternative>
> <#part type=text/plain format="flowed" charset="UTF-8" disposition=inline nofile=yes>
> Hi everyone,
>
> This UnrealIRCd 6.2.7 release fixes multiple issues in the webserver 
> module which allow an attacker to consume a lot of memory and stall the 
> IRCd. If you use Websockets 
> <https://www.unrealircd.org/docs/WebSocket_support> or JSON-RPC 
> <https://www.unrealircd.org/docs/JSON-RPC> then we recommend to either 
> upgrade or *hot-patch*.
>
> A good strategy may be to hot-patch now to fix the most urgent issues 
> and plan an upgrade to 6.2.7 at a more convenient time somewhere in the 
> upcoming weeks.
>
>
>       Fix without restart (hot-patch)
>
> The hot-patch allows you to update the server *without a restart* on 
> UnrealIRCd 6.2.x and may also work on older (unsupported) versions.
> To do so, run: |./unrealircd hot-patch webserver-header-dos|
>
>
>       Upgrade to the complete 6.2.7 release (with restart)
>
> Note that the hot-patch /only/ fixes the issues mentioned above. This 
> release contains other fixes and enhancements. You can read all about it 
> in the release notes below.
> As always, you can download UnrealIRCd from unrealircd.org 
> <https://www.unrealircd.org/>. On *NIX you can upgrade to 6.2.7 (if you 
> are ok with an ircd restart) with the command: ./unrealircd upgrade
>
>
>       Enhancements:
>
>   * New set::anti-flood
>     <https://www.unrealircd.org/docs/Anti-flood_settings#max-processing-time>
>     setting |max-processing-time|: this limits how much time we spend on
>     a particular client in the I/O engine. This gives other clients a
>     more fair chance to get their commands read and processed. Defaults
>     to 25ms for unknown-users and 50ms for known-users.
>   * IRCOps can use |WHO| with Extended Server Bans
>     <https://www.unrealircd.org/docs/Extended_server_bans> for things
>     like |WHO ~asn:64496|, |WHO ~country:NL| and |WHO
>     ~security-group:unknown-users|.
>
>
>       Changes:
>
>   * Update shipped libs: c-ares (1.34.8, security fixes)
>   * The GeoIP <https://www.unrealircd.org/docs/GeoIP> engine was already
>     switched to |geoip_mmdb| in 6.2.4 for new installations. We now
>     change the default for existing installations as well. The old
>     engine |geoip_classic| is now deprecated and we will stop database
>     updates for classic somewhere in 2027.
>   * Added minimal self-check for Argon2 (fail early instead of crashing)
>
>
>       Fixes:
>
>   * Resource exhaustion attack in the webserver. Previously we had no
>     restriction on HTTP request headers, so a client could make a big
>     request which would consume a lot of memory and stall the IRCd. This
>     only affects servers with a listen block with
>     |listen::options::websocket| (for Websockets
>     <https://www.unrealircd.org/docs/WebSocket_support>) or
>     |listen::options::rpc| (for JSON-RPC
>     <https://www.unrealircd.org/docs/JSON-RPC>). See the top of these
>     release notes, especially the hot-patch.
>   * Websocket pings were limited in size but not throttled
>   * Crash when using crule functions
>     <https://www.unrealircd.org/docs/Crule> |match_asname()| or when
>     using |unicode_count('Nonexistent Block')|.
>   * Crash with JSON-RPC method |rpc.del_timer|
>   * Crash with |REHASH -dns| if linking to a server (race condition)
>   * AntiMixedUTF8
>     <https://www.unrealircd.org/docs/Set_block#set::antimixedutf8> gave
>     some emoji a way too high score.
>   * Race condition in server linking. If a server was trying to link to
>     multiple servers at once, then the servers could clash causing a
>     connect+split. This could happen in the non-standard configuration
>     where set::server-linking::autoconnect-strategy
>     <https://www.unrealircd.org/docs/Set_block#set::server-linking> was
>     set to |parallel| instead of the default |sequential|. This change
>     means that |parallel| should now be safe to use.
>   * The memory log, that JSON-RPC log.getall uses, was cleaned up too much.
>   * Channel mode |+f| type |r| (repeat) has normalization (like ignoring
>     upper/lowercase and color), but this normalization was accidently
>     ignored.
>
>
>       Developers and protocol:
>
>   * New wiki articles: Dev:Coding guidelines
>     <https://www.unrealircd.org/docs/Dev:Coding_guidelines> and
>     Dev:Visual Studio Code
>     <https://www.unrealircd.org/docs/Dev:Visual_Studio_Code>.
>   * After more than 25 years, the entire source code has been
>     reformatted in one big clang-format commit ('make format'), giving
>     the whole tree a single consistent style. Git blame on github.com is
>     unaffected thanks to |.git-blame-ignore-revs|. For local |git blame|
>     to benefit as well, run this once in your working copy: |git config
>     blame.ignoreRevsFile .git-blame-ignore-revs|. If you maintain a fork
>     or local patches, then read the migration instructions in this
>     commit message
>     <https://github.com/unrealircd/unrealircd/commit/e77eb9e923e84853c0fb2a154150f401a9602e0b>.
>   * All C code must now be formatted with clang-format version 21: run
>     |make format| *before committing* (or use clang-format in your
>     editor). CI will check for this and fail a PR containing unformatted
>     code.
>   * JSON-RPC <https://www.unrealircd.org/docs/JSON-RPC:Security_group>
>     |security_group.list| and |security_group.get|: we now consistently
>     have |builtin| on all built-in security groups, and a fix for
>     missing |public| in unknown-users.
>
> Best regards,
>
> Bram Matthys, UnrealIRCd
>
> <#part type=text/html charset="UTF-8" nofile=yes>
> <!DOCTYPE html>
> <html>
>   <head>
>     <meta http-equiv="content-type" content="text/html; charset=UTF-8">
>   </head>
>   <body>
>     <p>Hi everyone,</p>
>     <p data-sourcepos="4:1-8:67" dir="auto">This UnrealIRCd 6.2.7
>       release fixes multiple issues in the webserver module which allow
>       an attacker to consume a lot of memory and stall the IRCd. If you
>       use <a moz-do-not-send="true"
>         href="https://www.unrealircd.org/docs/WebSocket_support">
>         Websockets</a> or <a moz-do-not-send="true"
>         href="https://www.unrealircd.org/docs/JSON-RPC">JSON-RPC</a>
>       then we recommend to either upgrade or <strong>hot-patch</strong>.</p>
>     <p data-sourcepos="4:1-8:67" dir="auto">A good strategy may be to
>       hot-patch now to fix the most urgent issues and plan an upgrade to
>       6.2.7 at a more convenient time somewhere in the upcoming weeks.</p>
>     <h3 data-sourcepos="17:1-17:17" class="heading-element" dir="auto">Fix
>       without restart (hot-patch)</h3>
>     <p data-sourcepos="4:1-8:67" dir="auto">The hot-patch allows you to
>       update the server <strong>without a restart</strong> on
>       UnrealIRCd 6.2.x and may also work on older (unsupported)
>       versions.<br>
>       To do so, run: <code>./unrealircd hot-patch webserver-header-dos</code></p>
>     <h3 data-sourcepos="17:1-17:17" class="heading-element" dir="auto">Upgrade
>       to the complete 6.2.7 release (with restart)</h3>
>     <p data-sourcepos="12:1-15:54" dir="auto">Note that the hot-patch <em>only</em>
>       fixes the issues mentioned above. This release contains other
>       fixes and enhancements. You can read all about it in the release
>       notes below.<br>
>       As always, you can download UnrealIRCd from <a
>         href="https://www.unrealircd.org/" class="postlink"
>         moz-do-not-send="true">unrealircd.org</a>. On *NIX you can
>       upgrade to 6.2.7 (if you are ok with an ircd restart) with the
>       command: <font face="monospace">./unrealircd upgrade</font></p>
>     <div class="markdown-heading" dir="auto">
>       <h3 data-sourcepos="17:1-17:17" class="heading-element" dir="auto">Enhancements:</h3>
>     </div>
>     <ul data-sourcepos="18:1-27:0" dir="auto">
>       <li data-sourcepos="18:1-22:41">New <a
> href="https://www.unrealircd.org/docs/Anti-flood_settings#max-processing-time"
>           rel="nofollow" moz-do-not-send="true">set::anti-flood</a>
>         setting <code>max-processing-time</code>: this limits how much
>         time we spend on a particular client in the I/O engine. This
>         gives other clients a more fair chance to get their commands
>         read and processed. Defaults to 25ms for unknown-users and 50ms
>         for known-users.</li>
>       <li data-sourcepos="23:1-27:0">IRCOps can use <code>WHO</code>
>         with <a
>           href="https://www.unrealircd.org/docs/Extended_server_bans"
>           rel="nofollow" moz-do-not-send="true">Extended Server Bans</a>
>         for things like <code>WHO ~asn:64496</code>, <code>WHO
>           ~country:NL</code> and <code>WHO
>           ~security-group:unknown-users</code>.</li>
>     </ul>
>     <div class="markdown-heading" dir="auto">
>       <h3 data-sourcepos="28:1-28:12" class="heading-element" dir="auto">Changes:</h3>
>     </div>
>     <ul data-sourcepos="29:1-36:0" dir="auto">
>       <li data-sourcepos="29:1-29:54">Update shipped libs: c-ares
>         (1.34.8, security fixes)</li>
>       <li data-sourcepos="30:1-34:32">The <a
>           href="https://www.unrealircd.org/docs/GeoIP" rel="nofollow"
>           moz-do-not-send="true">GeoIP</a> engine was already switched
>         to <code>geoip_mmdb</code> in 6.2.4 for new installations. We
>         now change the default for existing installations as well. The
>         old engine <code>geoip_classic</code> is now deprecated and we
>         will stop database updates for classic somewhere in 2027.</li>
>       <li data-sourcepos="35:1-36:0">Added minimal self-check for Argon2
>         (fail early instead of crashing)</li>
>     </ul>
>     <div class="markdown-heading" dir="auto">
>       <h3 data-sourcepos="37:1-37:10" class="heading-element" dir="auto">Fixes:</h3>
>     </div>
>     <ul data-sourcepos="38:1-62:0" dir="auto">
>       <li data-sourcepos="38:1-45:51">Resource exhaustion attack in the
>         webserver. Previously we had no restriction on HTTP request
>         headers, so a client could make a big request which would
>         consume a lot of memory and stall the IRCd. This only affects
>         servers with a listen block with <code>listen::options::websocket</code>
>         (for <a
>           href="https://www.unrealircd.org/docs/WebSocket_support"
>           rel="nofollow" moz-do-not-send="true">Websockets</a>) or <code>listen::options::rpc</code>
>         (for <a href="https://www.unrealircd.org/docs/JSON-RPC"
>           rel="nofollow" moz-do-not-send="true">JSON-RPC</a>). See the
>         top of these release notes, especially the hot-patch.</li>
>       <li data-sourcepos="46:1-46:56">Websocket pings were limited in
>         size but not throttled</li>
>       <li data-sourcepos="47:1-48:70">Crash when using <a
>           href="https://www.unrealircd.org/docs/Crule" rel="nofollow"
>           moz-do-not-send="true">crule functions</a> <code>match_asname()</code>
>         or when using <code>unicode_count('Nonexistent Block')</code>.</li>
>       <li data-sourcepos="49:1-49:44">Crash with JSON-RPC method <code>rpc.del_timer</code></li>
>       <li data-sourcepos="50:1-50:66">Crash with <code>REHASH -dns</code>
>         if linking to a server (race condition)</li>
>       <li data-sourcepos="51:1-52:39"><a
> href="https://www.unrealircd.org/docs/Set_block#set::antimixedutf8"
>           rel="nofollow" moz-do-not-send="true">AntiMixedUTF8</a> gave
>         some emoji a way too high score.</li>
>       <li data-sourcepos="53:1-58:50">Race condition in server linking.
>         If a server was trying to link to multiple servers at once, then
>         the servers could clash causing a connect+split. This could
>         happen in the non-standard configuration where <a
> href="https://www.unrealircd.org/docs/Set_block#set::server-linking"
>           rel="nofollow" moz-do-not-send="true">set::server-linking::autoconnect-strategy</a>
>         was set to <code>parallel</code> instead of the default <code>sequential</code>.
>         This change means that <code>parallel</code> should now be safe
>         to use.</li>
>       <li data-sourcepos="59:1-59:73">The memory log, that JSON-RPC
>         log.getall uses, was cleaned up too much.</li>
>       <li data-sourcepos="60:1-62:0">Channel mode <code>+f</code> type
>         <code>r</code> (repeat) has normalization (like ignoring
>         upper/lowercase and color), but this normalization was
>         accidently ignored.</li>
>     </ul>
>     <div class="markdown-heading" dir="auto">
>       <h3 data-sourcepos="63:1-63:28" class="heading-element" dir="auto">Developers
>         and protocol:</h3>
>     </div>
>     <ul data-sourcepos="64:1-82:0" dir="auto">
>       <li data-sourcepos="64:1-65:87">New wiki articles: <a
>           href="https://www.unrealircd.org/docs/Dev:Coding_guidelines"
>           rel="nofollow" moz-do-not-send="true">Dev:Coding guidelines</a>
>         and <a
>           href="https://www.unrealircd.org/docs/Dev:Visual_Studio_Code"
>           rel="nofollow" moz-do-not-send="true">Dev:Visual Studio Code</a>.</li>
>       <li data-sourcepos="66:1-74:114">After more than 25 years, the
>         entire source code has been reformatted in one big clang-format
>         commit ('make format'), giving the whole tree a single
>         consistent style. Git blame on github.com is unaffected thanks
>         to <code>.git-blame-ignore-revs</code>. For local <code>git
>           blame</code> to benefit as well, run this once in your working
>         copy: <code>git config blame.ignoreRevsFile
>           .git-blame-ignore-revs</code>. If you maintain a fork or local
>         patches, then read the migration instructions in <a
> href="https://github.com/unrealircd/unrealircd/commit/e77eb9e923e84853c0fb2a154150f401a9602e0b"
>           moz-do-not-send="true">this commit message</a>.</li>
>       <li data-sourcepos="75:1-77:67">All C code must now be formatted
>         with clang-format version 21: run <code>make format</code> <strong>before
>           committing</strong> (or use clang-format in your editor). CI
>         will check for this and fail a PR containing unformatted code.</li>
>       <li data-sourcepos="78:1-82:0"><a
>           href="https://www.unrealircd.org/docs/JSON-RPC:Security_group"
>           rel="nofollow" moz-do-not-send="true">JSON-RPC</a> <code>security_group.list</code>
>         and <code>security_group.get</code>: we now consistently have <code>builtin</code>
>         on all built-in security groups, and a fix for missing <code>public</code>
>         in unknown-users.</li>
>     </ul>
>     <p>Best regards,</p>
>     <p>Bram Matthys, UnrealIRCd</p>
>     <p><br>
>     </p>
>   </body>
> </html>
> <#/multipart>
> <#part type=text/plain charset="us-ascii" disposition=inline nofile=yes>
> <#part type=text/plain charset="us-ascii" disposition=inline nofile=yes>
> _______________________________________________
> Unreal-notify mailing list
> Unreal-notify@...ts.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/unreal-notify
> <#/multipart>
> -------------------- End of forwarded message --------------------

Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
