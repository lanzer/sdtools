import argparse
import glob
import pandas as pd
  
def main(args):
    # path = "/home/lanzer/training_data/images/50_pixelle"
    if args.src_dir is None:
        print(f'Error - no source directory defined.  use --src_dir=""')
        return
    path = args.src_dir
    files = glob.glob(path + "/*.caption")
  
    # defining an empty list to store 
    # content
    data_frame = pd.DataFrame()
    content = []
  
    # checking all the csv files in the 
    # specified path
    for filename in files:
    
        # reading content of csv file
        # content.append(filename)
        df = pd.read_csv(filename, index_col=None)
        content.append(df)
  
    # converting content to data frame
    data_frame = pd.concat(content)
    print(data_frame)

if __name__ == '__main__':

    parser = argparse.ArgumentParser()
    parser.add_argument(
        '--src_dir', type=str,
        help='Directory to load images')
    args = parser.parse_args()


    main(args)