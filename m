X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/09/13/1
Message-ID: <87se3ef1n2.fsf@gentoo.org>
Date: Sun, 13 Sep 2026 01:14:41 +0100
From: Sam James <sam@...too.org>
To: oss-security@...ts.openwall.com
Subject: Fwd: UnrealIRCd 6.2.7 released & hot-patch to fix security issues for existing installations
Content-Type: text/plain; charset=utf-8

Neither Websockets nor JSON-RPC are enabled by default.

-------------------- Start of forwarded message --------------------
Date: Sat, 12 Sep 2026 15:41:14 +0200
Subject: UnrealIRCd 6.2.7 released & hot-patch to fix security issues for
 existing installations
To: UnrealIRCd Release Announcements <unreal-notify@...ts.sourceforge.net>
From: Bram Matthys via Unreal-notify <unreal-notify@...ts.sourceforge.net>


Hi everyone,

This UnrealIRCd 6.2.7 release fixes multiple issues in the webserver 
module which allow an attacker to consume a lot of memory and stall the 
IRCd. If you use Websockets 
<https://www.unrealircd.org/docs/WebSocket_support> or JSON-RPC 
<https://www.unrealircd.org/docs/JSON-RPC> then we recommend to either 
upgrade or *hot-patch*.

A good strategy may be to hot-patch now to fix the most urgent issues 
and plan an upgrade to 6.2.7 at a more convenient time somewhere in the 
upcoming weeks.


      Fix without restart (hot-patch)

The hot-patch allows you to update the server *without a restart* on 
UnrealIRCd 6.2.x and may also work on older (unsupported) versions.
To do so, run: |./unrealircd hot-patch webserver-header-dos|


      Upgrade to the complete 6.2.7 release (with restart)

Note that the hot-patch /only/ fixes the issues mentioned above. This 
release contains other fixes and enhancements. You can read all about it 
in the release notes below.
As always, you can download UnrealIRCd from unrealircd.org 
<https://www.unrealircd.org/>. On *NIX you can upgrade to 6.2.7 (if you 
are ok with an ircd restart) with the command: ./unrealircd upgrade


      Enhancements:

  * New set::anti-flood
    <https://www.unrealircd.org/docs/Anti-flood_settings#max-processing-time>
    setting |max-processing-time|: this limits how much time we spend on
    a particular client in the I/O engine. This gives other clients a
    more fair chance to get their commands read and processed. Defaults
    to 25ms for unknown-users and 50ms for known-users.
  * IRCOps can use |WHO| with Extended Server Bans
    <https://www.unrealircd.org/docs/Extended_server_bans> for things
    like |WHO ~asn:64496|, |WHO ~country:NL| and |WHO
    ~security-group:unknown-users|.


      Changes:

  * Update shipped libs: c-ares (1.34.8, security fixes)
  * The GeoIP <https://www.unrealircd.org/docs/GeoIP> engine was already
    switched to |geoip_mmdb| in 6.2.4 for new installations. We now
    change the default for existing installations as well. The old
    engine |geoip_classic| is now deprecated and we will stop database
    updates for classic somewhere in 2027.
  * Added minimal self-check for Argon2 (fail early instead of crashing)


      Fixes:

  * Resource exhaustion attack in the webserver. Previously we had no
    restriction on HTTP request headers, so a client could make a big
    request which would consume a lot of memory and stall the IRCd. This
    only affects servers with a listen block with
    |listen::options::websocket| (for Websockets
    <https://www.unrealircd.org/docs/WebSocket_support>) or
    |listen::options::rpc| (for JSON-RPC
    <https://www.unrealircd.org/docs/JSON-RPC>). See the top of these
    release notes, especially the hot-patch.
  * Websocket pings were limited in size but not throttled
  * Crash when using crule functions
    <https://www.unrealircd.org/docs/Crule> |match_asname()| or when
    using |unicode_count('Nonexistent Block')|.
  * Crash with JSON-RPC method |rpc.del_timer|
  * Crash with |REHASH -dns| if linking to a server (race condition)
  * AntiMixedUTF8
    <https://www.unrealircd.org/docs/Set_block#set::antimixedutf8> gave
    some emoji a way too high score.
  * Race condition in server linking. If a server was trying to link to
    multiple servers at once, then the servers could clash causing a
    connect+split. This could happen in the non-standard configuration
    where set::server-linking::autoconnect-strategy
    <https://www.unrealircd.org/docs/Set_block#set::server-linking> was
    set to |parallel| instead of the default |sequential|. This change
    means that |parallel| should now be safe to use.
  * The memory log, that JSON-RPC log.getall uses, was cleaned up too much.
  * Channel mode |+f| type |r| (repeat) has normalization (like ignoring
    upper/lowercase and color), but this normalization was accidently
    ignored.


      Developers and protocol:

  * New wiki articles: Dev:Coding guidelines
    <https://www.unrealircd.org/docs/Dev:Coding_guidelines> and
    Dev:Visual Studio Code
    <https://www.unrealircd.org/docs/Dev:Visual_Studio_Code>.
  * After more than 25 years, the entire source code has been
    reformatted in one big clang-format commit ('make format'), giving
    the whole tree a single consistent style. Git blame on github.com is
    unaffected thanks to |.git-blame-ignore-revs|. For local |git blame|
    to benefit as well, run this once in your working copy: |git config
    blame.ignoreRevsFile .git-blame-ignore-revs|. If you maintain a fork
    or local patches, then read the migration instructions in this
    commit message
    <https://github.com/unrealircd/unrealircd/commit/e77eb9e923e84853c0fb2a154150f401a9602e0b>.
  * All C code must now be formatted with clang-format version 21: run
    |make format| *before committing* (or use clang-format in your
    editor). CI will check for this and fail a PR containing unformatted
    code.
  * JSON-RPC <https://www.unrealircd.org/docs/JSON-RPC:Security_group>
    |security_group.list| and |security_group.get|: we now consistently
    have |builtin| on all built-in security groups, and a fix for
    missing |public| in unknown-users.

Best regards,

Bram Matthys, UnrealIRCd


Content of type "text/html" skipped


_______________________________________________
Unreal-notify mailing list
Unreal-notify@...ts.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/unreal-notify


-------------------- End of forwarded message --------------------


Download attachment "signature.asc" of type "application/pgp-signature" (419 bytes)
