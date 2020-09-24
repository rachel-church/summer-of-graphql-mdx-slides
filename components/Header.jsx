/** @jsx jsx */
import { jsx } from 'theme-ui';
import { useDeck } from 'mdx-deck';

export const Header = ({ children, ...props }) => {
  const { index, length } = useDeck();

  return (
    <header
      {...props}
      sx={{
        display: 'flex',
        width: '100vw',
        fontSize: '20px',
        position: 'absolute',
        top: 0,
        left: 0,
        padding: '10px',
        color: '#737373',
        zIndex: 10,
      }}
    >
      <div>{children}</div>
      <div style={{ fontSize: '18px', textAlign: 'end', flex: 1 }}>{index + 1} / {length}</div>
    </header>
  );
}

export default Header
