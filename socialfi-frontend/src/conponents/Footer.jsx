import { Box, Typography, Container } from "@mui/material";

export default function Footer() {
  return (
    <Box
      sx={{
        backgroundColor: "#0f172a",
        color: "white",
        mt: 5,
        py: 5,
      }}
    >
      <Container maxWidth="md">
        <Typography variant="h4" gutterBottom>
          Whitepaper — SocialFi42 (SCF)
        </Typography>

        <Typography variant="h6" gutterBottom>
          1. Introduction
        </Typography>
        <Typography sx={{ mb: 2 }}>
          SocialFi42 is a decentralized social media platform built on Web3 principles,
          designed to give users full ownership of their data, content, and digital interactions.
        </Typography>

        <Typography sx={{ mb: 2 }}>
          Unlike traditional Web2 platforms, SocialFi42 shifts ownership back to users through blockchain technology.
        </Typography>

        <Typography variant="h6">2. Vision</Typography>
        <Typography component="div">
          • Users own their data and identity <br />
          • Content is managed on-chain <br />
          • Value is redistributed to users <br />
          • Creators are directly rewarded
        </Typography>

        <Typography variant="h6" mt={2}>3. Token Overview</Typography>
        <Typography>
          Standard: ERC-20 <br />
          Name: SocialFi42 <br />
          Symbol: SCF <br />
          Decimals: 18
        </Typography>

        <Typography variant="h6" mt={2}>4. Tokenomics</Typography>
        <Typography component="div">
          • 80% — User Rewards <br />
          • 10% — Marketing <br />
          • 10% — Treasury
        </Typography>

        <Typography variant="h6" mt={2}>5. Platform</Typography>
        <Typography>
          Wallet-based identity, tokenized content, and a reward-driven ecosystem.
        </Typography>

        <Typography variant="h6" mt={2}>6. Smart Contract</Typography>
        <Typography>
          Built with ERC20, Ownable, Burnable, and Permit standards.
        </Typography>

        <Typography variant="h6" mt={2}>7. Use Cases</Typography>
        <Typography>
          Rewards, tipping, governance, premium access, reputation.
        </Typography>

        <Typography variant="h6" mt={2}>8. Future</Typography>
        <Typography>
          DAO governance, NFTs, monetization tools, Web3 social expansion.
        </Typography>

        <Typography variant="h6" mt={2}>9. Conclusion</Typography>
        <Typography>
          SocialFi42 redefines social media by giving ownership and value back to users.
        </Typography>

        <Typography variant="body2" mt={4} color="gray">
          © 2026 SocialFi42 — All rights reserved
        </Typography>
      </Container>
    </Box>
  );
}