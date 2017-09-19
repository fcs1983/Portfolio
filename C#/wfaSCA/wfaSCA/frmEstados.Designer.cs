namespace wfaSCA
{
    partial class frmEstados
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmEstados));
            System.Windows.Forms.Label uFe_SigLabel;
            System.Windows.Forms.Label ufe_NomeLabel;
            this.estadoBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorAddNewItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorDeleteItem = new System.Windows.Forms.ToolStripButton();
            this.estadoBindingNavigatorSaveItem = new System.Windows.Forms.ToolStripButton();
            this.uFe_SigTextBox = new System.Windows.Forms.TextBox();
            this.ufe_NomeTextBox = new System.Windows.Forms.TextBox();
            this.epEstados = new System.Windows.Forms.ErrorProvider(this.components);
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.fillByNomeEstadoToolStrip = new System.Windows.Forms.ToolStrip();
            this.ufe_NomeToolStripLabel = new System.Windows.Forms.ToolStripLabel();
            this.ufe_NomeToolStripTextBox = new System.Windows.Forms.ToolStripTextBox();
            this.fillByNomeEstadoToolStripButton = new System.Windows.Forms.ToolStripButton();
            this.uFeSigDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ufeNomeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.estadoBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.scaDataSet = new wfaSCA.scaDataSet();
            this.estadoTableAdapter = new wfaSCA.scaDataSetTableAdapters.EstadoTableAdapter();
            this.tableAdapterManager = new wfaSCA.scaDataSetTableAdapters.TableAdapterManager();
            uFe_SigLabel = new System.Windows.Forms.Label();
            ufe_NomeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.estadoBindingNavigator)).BeginInit();
            this.estadoBindingNavigator.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epEstados)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.fillByNomeEstadoToolStrip.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.estadoBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // estadoBindingNavigator
            // 
            this.estadoBindingNavigator.AddNewItem = this.bindingNavigatorAddNewItem;
            this.estadoBindingNavigator.BindingSource = this.estadoBindingSource;
            this.estadoBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.estadoBindingNavigator.DeleteItem = this.bindingNavigatorDeleteItem;
            this.estadoBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2,
            this.bindingNavigatorAddNewItem,
            this.bindingNavigatorDeleteItem,
            this.estadoBindingNavigatorSaveItem});
            this.estadoBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.estadoBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.estadoBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.estadoBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.estadoBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.estadoBindingNavigator.Name = "estadoBindingNavigator";
            this.estadoBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.estadoBindingNavigator.Size = new System.Drawing.Size(482, 25);
            this.estadoBindingNavigator.TabIndex = 0;
            this.estadoBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorAddNewItem
            // 
            this.bindingNavigatorAddNewItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorAddNewItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorAddNewItem.Image")));
            this.bindingNavigatorAddNewItem.Name = "bindingNavigatorAddNewItem";
            this.bindingNavigatorAddNewItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorAddNewItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorAddNewItem.Text = "Add new";
            // 
            // bindingNavigatorDeleteItem
            // 
            this.bindingNavigatorDeleteItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorDeleteItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorDeleteItem.Image")));
            this.bindingNavigatorDeleteItem.Name = "bindingNavigatorDeleteItem";
            this.bindingNavigatorDeleteItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorDeleteItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorDeleteItem.Text = "Delete";
            // 
            // estadoBindingNavigatorSaveItem
            // 
            this.estadoBindingNavigatorSaveItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.estadoBindingNavigatorSaveItem.Image = ((System.Drawing.Image)(resources.GetObject("estadoBindingNavigatorSaveItem.Image")));
            this.estadoBindingNavigatorSaveItem.Name = "estadoBindingNavigatorSaveItem";
            this.estadoBindingNavigatorSaveItem.Size = new System.Drawing.Size(23, 22);
            this.estadoBindingNavigatorSaveItem.Text = "Save Data";
            this.estadoBindingNavigatorSaveItem.Click += new System.EventHandler(this.estadoBindingNavigatorSaveItem_Click_1);
            // 
            // uFe_SigLabel
            // 
            uFe_SigLabel.AutoSize = true;
            uFe_SigLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            uFe_SigLabel.Location = new System.Drawing.Point(32, 73);
            uFe_SigLabel.Name = "uFe_SigLabel";
            uFe_SigLabel.Size = new System.Drawing.Size(44, 18);
            uFe_SigLabel.TabIndex = 1;
            uFe_SigLabel.Text = "Sigla:";
            // 
            // uFe_SigTextBox
            // 
            this.uFe_SigTextBox.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.uFe_SigTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.estadoBindingSource, "UFe_Sig", true));
            this.uFe_SigTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.uFe_SigTextBox.Location = new System.Drawing.Point(96, 70);
            this.uFe_SigTextBox.Name = "uFe_SigTextBox";
            this.uFe_SigTextBox.Size = new System.Drawing.Size(100, 24);
            this.uFe_SigTextBox.TabIndex = 2;
            this.uFe_SigTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.uFe_SigTextBox_Validating);
            // 
            // ufe_NomeLabel
            // 
            ufe_NomeLabel.AutoSize = true;
            ufe_NomeLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            ufe_NomeLabel.Location = new System.Drawing.Point(32, 99);
            ufe_NomeLabel.Name = "ufe_NomeLabel";
            ufe_NomeLabel.Size = new System.Drawing.Size(53, 18);
            ufe_NomeLabel.TabIndex = 3;
            ufe_NomeLabel.Text = "Nome:";
            // 
            // ufe_NomeTextBox
            // 
            this.ufe_NomeTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.estadoBindingSource, "Ufe_Nome", true));
            this.ufe_NomeTextBox.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ufe_NomeTextBox.Location = new System.Drawing.Point(96, 96);
            this.ufe_NomeTextBox.Name = "ufe_NomeTextBox";
            this.ufe_NomeTextBox.Size = new System.Drawing.Size(250, 24);
            this.ufe_NomeTextBox.TabIndex = 4;
            this.ufe_NomeTextBox.Validating += new System.ComponentModel.CancelEventHandler(this.ufe_NomeTextBox_Validating);
            // 
            // epEstados
            // 
            this.epEstados.ContainerControl = this;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.uFeSigDataGridViewTextBoxColumn,
            this.ufeNomeDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.estadoBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(12, 142);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(450, 139);
            this.dataGridView1.TabIndex = 5;
            // 
            // fillByNomeEstadoToolStrip
            // 
            this.fillByNomeEstadoToolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.ufe_NomeToolStripLabel,
            this.ufe_NomeToolStripTextBox,
            this.fillByNomeEstadoToolStripButton});
            this.fillByNomeEstadoToolStrip.Location = new System.Drawing.Point(0, 25);
            this.fillByNomeEstadoToolStrip.Name = "fillByNomeEstadoToolStrip";
            this.fillByNomeEstadoToolStrip.Size = new System.Drawing.Size(482, 25);
            this.fillByNomeEstadoToolStrip.TabIndex = 6;
            // 
            // ufe_NomeToolStripLabel
            // 
            this.ufe_NomeToolStripLabel.Name = "ufe_NomeToolStripLabel";
            this.ufe_NomeToolStripLabel.Size = new System.Drawing.Size(98, 22);
            this.ufe_NomeToolStripLabel.Text = "Nome do Estado:";
            // 
            // ufe_NomeToolStripTextBox
            // 
            this.ufe_NomeToolStripTextBox.Name = "ufe_NomeToolStripTextBox";
            this.ufe_NomeToolStripTextBox.Size = new System.Drawing.Size(100, 25);
            // 
            // fillByNomeEstadoToolStripButton
            // 
            this.fillByNomeEstadoToolStripButton.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Text;
            this.fillByNomeEstadoToolStripButton.Name = "fillByNomeEstadoToolStripButton";
            this.fillByNomeEstadoToolStripButton.Size = new System.Drawing.Size(61, 22);
            this.fillByNomeEstadoToolStripButton.Text = "Pesquisar";
            this.fillByNomeEstadoToolStripButton.Click += new System.EventHandler(this.fillByNomeEstadoToolStripButton_Click);
            // 
            // uFeSigDataGridViewTextBoxColumn
            // 
            this.uFeSigDataGridViewTextBoxColumn.DataPropertyName = "UFe_Sig";
            this.uFeSigDataGridViewTextBoxColumn.HeaderText = "Sigla";
            this.uFeSigDataGridViewTextBoxColumn.Name = "uFeSigDataGridViewTextBoxColumn";
            // 
            // ufeNomeDataGridViewTextBoxColumn
            // 
            this.ufeNomeDataGridViewTextBoxColumn.DataPropertyName = "Ufe_Nome";
            this.ufeNomeDataGridViewTextBoxColumn.HeaderText = "Nome";
            this.ufeNomeDataGridViewTextBoxColumn.Name = "ufeNomeDataGridViewTextBoxColumn";
            // 
            // estadoBindingSource
            // 
            this.estadoBindingSource.DataMember = "Estado";
            this.estadoBindingSource.DataSource = this.scaDataSet;
            // 
            // scaDataSet
            // 
            this.scaDataSet.DataSetName = "scaDataSet";
            this.scaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // estadoTableAdapter
            // 
            this.estadoTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.AlunoTableAdapter = null;
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.CursoTableAdapter = null;
            this.tableAdapterManager.DisciplinaTableAdapter = null;
            this.tableAdapterManager.EstadoTableAdapter = this.estadoTableAdapter;
            this.tableAdapterManager.MatriculaTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = wfaSCA.scaDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            // 
            // frmEstados
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(482, 301);
            this.Controls.Add(this.fillByNomeEstadoToolStrip);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(uFe_SigLabel);
            this.Controls.Add(this.uFe_SigTextBox);
            this.Controls.Add(ufe_NomeLabel);
            this.Controls.Add(this.ufe_NomeTextBox);
            this.Controls.Add(this.estadoBindingNavigator);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "frmEstados";
            this.Text = "ESTADOS";
            this.Load += new System.EventHandler(this.frmEstados_Load);
            ((System.ComponentModel.ISupportInitialize)(this.estadoBindingNavigator)).EndInit();
            this.estadoBindingNavigator.ResumeLayout(false);
            this.estadoBindingNavigator.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.epEstados)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.fillByNomeEstadoToolStrip.ResumeLayout(false);
            this.fillByNomeEstadoToolStrip.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.estadoBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scaDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private scaDataSet scaDataSet;
        private System.Windows.Forms.BindingSource estadoBindingSource;
        private scaDataSetTableAdapters.EstadoTableAdapter estadoTableAdapter;
        private scaDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator estadoBindingNavigator;
        private System.Windows.Forms.ToolStripButton bindingNavigatorAddNewItem;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorDeleteItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.ToolStripButton estadoBindingNavigatorSaveItem;
        private System.Windows.Forms.TextBox uFe_SigTextBox;
        private System.Windows.Forms.TextBox ufe_NomeTextBox;
        private System.Windows.Forms.ErrorProvider epEstados;
        private System.Windows.Forms.ToolStrip fillByNomeEstadoToolStrip;
        private System.Windows.Forms.ToolStripLabel ufe_NomeToolStripLabel;
        private System.Windows.Forms.ToolStripTextBox ufe_NomeToolStripTextBox;
        private System.Windows.Forms.ToolStripButton fillByNomeEstadoToolStripButton;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.DataGridViewTextBoxColumn uFeSigDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn ufeNomeDataGridViewTextBoxColumn;

    }
}