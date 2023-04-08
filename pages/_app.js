import '../styles/globals.css'
import { QueryClientProvider, QueryClient } from "react-query";
import LayoutProvider from '/context/LayoutContext'
import { usePageLoading } from '../lib/pageLoader';
const queryClient = new QueryClient();
import { ReactQueryDevtools } from 'react-query/devtools'

function MyApp({ Component, pageProps }) {
  const { isPageLoading } = usePageLoading();
  return (
    <QueryClientProvider client={queryClient}>
      <LayoutProvider isPageLoading={isPageLoading} >
        {/* {isPageLoading ? (
          <Layout >spiner</Layout>
        ) : (
          <Component {...pageProps} />
        )} */}

        <Component {...pageProps} />
        <ReactQueryDevtools initialIsOpen={false} />
      </LayoutProvider>
    </QueryClientProvider>

  )
}

export default MyApp
